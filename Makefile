# Build for CLI sort

.PHONY: all
all: sort

sort: sort.o
	g++ -std=c++11 sort.o -o sort

sort.o: sort.cpp
	g++ -std=c++11 -c sort.cpp

.PHONY: test
test:
	echo TBD

.PHONY: run
run: sort
	./sort c b a 

.PHONY: clean
clean:
	@rm -f sort sort.o
