appname = main

CXX = g++
CXXFLAGS = -Wall -g -std=c++20

SRCS = main.cpp

.PHONY: run
run: $(appname)
	./$(appname)

.PHONY: test
test: $(appname)
	./$(appname) < test_input.txt > user_output.txt
	diff test_output.txt user_output.txt

$(appname): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $(appname) $(SRCS)

.PHONY: clean
clean:
	$(RM) $(appname) user_output.txt
