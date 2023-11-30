appname = main

CXX = g++
CXXFLAGS = -Wall -g -std=c++20

SRCS = main.cpp

.PHONY: run
run: $(appname)
	./$(appname)

$(appname):
	$(CXX) $(CXXFLAGS) -o $(appname) $(SRCS)

.PHONY: clean
clean:
	$(RM) $(appname)
