# Build for CLI sort

.PHONY: all
all: sort

sort: sort.o
	g++ -std=c++11 sort.o -o sort

sort.o: sort.cpp
	g++ -std=c++11 -c sort.cpp

.PHONY: test
test:
	./sort c b a | diff output -
	./sort a b c | diff output -
	./sort b a c | diff output -
	./sort b c a | diff output -
	./sort a c b | diff output -
	./sort c a b | diff output -

.PHONY: run
run: sort
	./sort c b a 

.PHONY: clean
clean:
	@rm -f sort sort.o
