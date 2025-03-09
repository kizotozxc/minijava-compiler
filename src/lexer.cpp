#include "lexer.h"
#include <cctype>

Lexer::Lexer(const std::string& source) : source(source) {
    initKeywords();
}

void Lexer::initKeywords() {
    keywords["class"] = TokenType::CLASS;
    keywords["public"] = TokenType::PUBLIC;
    keywords["static"] = TokenType::STATIC;
    keywords["void"] = TokenType::VOID_TYPE;
    keywords["main"] = TokenType::MAIN;
    keywords["extends"] = TokenType::EXTENDS;
    keywords["return"] = TokenType::RETURN;
    keywords["if"] = TokenType::IF;
    keywords["else"] = TokenType::ELSE;
    keywords["while"] = TokenType::WHILE;
    keywords["new"] = TokenType::NEW;
    keywords["this"] = TokenType::THIS;
    keywords["assert"] = TokenType::ASSERT;
    keywords["int"] = TokenType::INT_TYPE;
    keywords["boolean"] = TokenType::BOOLEAN_TYPE;
    keywords["true"] = TokenType::TRUE;
    keywords["false"] = TokenType::FALSE;
    keywords["System"] = TokenType::SYSTEM;
    keywords["out"] = TokenType::OUT;
    keywords["println"] = TokenType::PRINTLN;
    keywords["length"] = TokenType::LENGTH;
}

char Lexer::peek() const {
    if (isAtEnd()) return '\0';
    return source[position];
}

char Lexer::advance() {
    char current = peek();
    position++;
    
    if (current == '\n') {
        currentLine++;
        currentColumn = 1;
    } else {
        currentColumn++;
    }
    
    return current;
}

bool Lexer::isAtEnd() const {
    return position >= source.length();
}

bool Lexer::match(char expected) {
    if (isAtEnd() || source[position] != expected) {
        return false;
    }
    
    position++;
    currentColumn++;
    return true;
}

Token Lexer::makeToken(TokenType type, const std::string& lexeme) {
    return Token(type, lexeme, currentLine, currentColumn - lexeme.length());
}

Token Lexer::errorToken(const std::string& message) {
    return Token(TokenType::ERROR, message, currentLine, currentColumn);
}

void Lexer::skipWhitespace() {
    while (true) {
        char c = peek();
        
        switch (c) {
            case ' ':
            case '\t':
            case '\r':
            case '\n':
                advance();
                break;
                
            case '/':
                if (position + 1 < source.length()) {
                    if (source[position + 1] == '/') {
                        if (skipLineComment()) continue;
                    } else if (source[position + 1] == '*') {
                        if (skipBlockComment()) continue;
                    }
                }
                return;
                
            default:
                return;
        }
    }
}

bool Lexer::skipLineComment() {
    if (!(position + 1 < source.length() && source[position] == '/' && source[position + 1] == '/')) {
        return false;
    }
    
    // Пропускаем //
    advance();
    advance();
    
    // Пропускаем все символы до конца строки
    while (!isAtEnd() && peek() != '\n') {
        advance();
    }
    
    return true;
}

bool Lexer::skipBlockComment() {
    if (!(position + 1 < source.length() && source[position] == '/' && source[position + 1] == '*')) {
        return false;
    }
    
    // Пропускаем /*
    advance();
    advance();
    
    int nestingLevel = 1;
    
    while (!isAtEnd() && nestingLevel > 0) {
        if (position + 1 < source.length()) {
            if (source[position] == '/' && source[position + 1] == '*') {
                advance(); // /
                advance(); // *
                nestingLevel++;
                continue;
            } else if (source[position] == '*' && source[position + 1] == '/') {
                advance(); // *
                advance(); // /
                nestingLevel--;
                continue;
            }
        }
        
        advance();
    }
    
    return true;
}

Token Lexer::identifier() {
    size_t start = position;
    
    // Первый символ должен быть буквой
    if (std::isalpha(peek()) || peek() == '_') {
        advance();
        
        // Последующие символы могут быть буквами, цифрами или подчеркиваниями
        while (std::isalnum(peek()) || peek() == '_') {
            advance();
        }
        
        std::string text = source.substr(start, position - start);
        
        // Проверка, является ли идентификатор ключевым словом
        auto it = keywords.find(text);
        if (it != keywords.end()) {
            return makeToken(it->second, text);
        }
        
        return makeToken(TokenType::IDENTIFIER, text);
    }
    
    return errorToken("Ожидался идентификатор");
}

Token Lexer::number() {
    size_t start = position;
    
    while (std::isdigit(peek())) {
        advance();
    }
    
    std::string text = source.substr(start, position - start);
    return makeToken(TokenType::INTEGER_LITERAL, text);
}

Token Lexer::getNextToken() {
    skipWhitespace();
    
    if (isAtEnd()) {
        return makeToken(TokenType::EOF_TOKEN, "");
    }
    
    char c = advance();
    
    // Идентификаторы и ключевые слова
    if (std::isalpha(c) || c == '_') {
        position--; // Возвращаемся на символ назад
        currentColumn--;
        return identifier();
    }
    
    // Числа
    if (std::isdigit(c)) {
        position--; // Возвращаемся на символ назад
        currentColumn--;
        return number();
    }
    
    // Однозначные и составные операторы
    switch (c) {
        // Скобки и разделители
        case '(': return makeToken(TokenType::LPAREN, "(");
        case ')': return makeToken(TokenType::RPAREN, ")");
        case '{': return makeToken(TokenType::LBRACE, "{");
        case '}': return makeToken(TokenType::RBRACE, "}");
        case '[': return makeToken(TokenType::LBRACKET, "[");
        case ']': return makeToken(TokenType::RBRACKET, "]");
        case ';': return makeToken(TokenType::SEMICOLON, ";");
        case ',': return makeToken(TokenType::COMMA, ",");
        case '.': return makeToken(TokenType::DOT, ".");
        
        // Операторы
        case '+': return makeToken(TokenType::PLUS, "+");
        case '-': return makeToken(TokenType::MINUS, "-");
        case '*': return makeToken(TokenType::MULTIPLY, "*");
        case '%': return makeToken(TokenType::MODULO, "%");
        case '!': return makeToken(TokenType::NOT, "!");
        
        // Операторы, которые могут быть составными
        case '&':
            if (match('&')) {
                return makeToken(TokenType::AND, "&&");
            }
            return errorToken("Ожидался оператор &&");
            
        case '|':
            if (match('|')) {
                return makeToken(TokenType::OR, "||");
            }
            return errorToken("Ожидался оператор ||");
            
        case '=':
            if (match('=')) {
                return makeToken(TokenType::EQUAL, "==");
            }
            return makeToken(TokenType::ASSIGN, "=");
            
        case '<': return makeToken(TokenType::LESS, "<");
        case '>': return makeToken(TokenType::GREATER, ">");
        
        case '/': 
            return makeToken(TokenType::DIVIDE, "/");
    }
    
    return errorToken("Неизвестный символ");
}

std::vector<Token> Lexer::tokenize() {
    std::vector<Token> tokens;
    
    while (true) {
        Token token = getNextToken();
        tokens.push_back(token);
        
        if (token.type == TokenType::EOF_TOKEN) {
            break;
        }
    }
    
    return tokens;
}