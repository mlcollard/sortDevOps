/*
    sort.cpp

    A CLI program that sorts the list of names on the command line
*/

#include <iostream>
#include <iterator>
#include <vector>
#include <string>
#include <algorithm>

int main(int argc, char* argv[]) {

    // store all the words on the command line into a vector
    std::vector<std::string> words(argv + 1, argv + argc);

    // sort the words
    std::sort(words.begin(), words.end());

    // output the sorted words
    std::ostream_iterator<std::string> out(std::cout," ");
    copy(words.begin(), words.end(), out);
    std::cout << '\n';
    
    return 0;
}
