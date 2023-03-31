#!/bin/bash

g++ -g q8.cpp -o q8

g++ -g q8modified.cpp -o q8modified

gdb -ex "file q8" -ex "break q8.cpp:7" -ex "set logging file q8gdb.txt" -ex "set logging enabled on" -ex "run" -ex "print n" -ex "continue" -ex "exit"

gdb -ex "file q8modified" -ex "break q8modified.cpp:7" -ex "set logging file q8modifiedgdb.txt" -ex "set logging enabled on" -ex "run" -ex "print n" -ex "continue" -ex "exit"

diff q8gdb.txt q8modifiedgdb.txt



