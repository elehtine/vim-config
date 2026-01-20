appname = main

CXX = g++
CXXFLAGS = -Wall -g -std=c++2a
DEPENDFLAGS = -std=c++2a

SRCS = main.cpp
OBJS = $(SRCS:.cpp=.o)


.PHONY: run
run: $(appname)
	./$(appname)

$(appname): $(OBJS) .depend
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

.depend: $(SRCS)
	$(CXX) $(DEPENDFLAGS) -MM $(SRCS) > $@ 2> /dev/null

include .depend

.PHONY: clean
clean:
	$(RM) $(appname) .depend *.o
