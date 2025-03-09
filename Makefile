CXX = clang++
CXXFLAGS = -std=c++17 -Wall -Wextra -pedantic

TARGET = minijava_compiler
SRC_DIR = src/
SRCS = $(addprefix $(SRC_DIR)/, main.cpp lexer.cpp token.cpp parser.cpp)

BUILD_DIR = build
OBJ_DIR = $(BUILD_DIR)/obj
BIN_DIR = $(BUILD_DIR)/bin

OBJS = $(addprefix $(OBJ_DIR)/, $(notdir $(SRCS:.cpp=.o)))

all: dirs $(BIN_DIR)/$(TARGET)

dirs:
		mkdir -p $(OBJ_DIR)
		mkdir -p $(BIN_DIR)

$(BIN_DIR)/$(TARGET): $(OBJS)
		$(CXX) $(CXXFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
		$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
		rm -rf $(BUILD_DIR)

.PHONY: all clean dirs