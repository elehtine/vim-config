CXX      := g++
CXXFLAGS := -std=c++20 -Wall -Wextra -g -O2
LDFLAGS  :=
LDLIBS   :=

APP_NAME := main
OBJ_DIR  := obj
BIN_DIR  := bin

SRCS     := main.cpp math.cpp
OBJS     := $(SRCS:%.cpp=$(OBJ_DIR)/%.o)
DEPS     := $(OBJS:.o=.d)

.PHONY: all clean run

all: run

run: $(BIN_DIR)/$(APP_NAME)
	./$(BIN_DIR)/$(APP_NAME)

$(BIN_DIR)/$(APP_NAME): $(OBJS) | $(BIN_DIR)
	$(CXX) $(LDFLAGS) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: %.cpp | $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -MMD -MP -c $< -o $@

$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@

-include $(DEPS)

clean:
	$(RM) -r $(OBJ_DIR) $(BIN_DIR)
