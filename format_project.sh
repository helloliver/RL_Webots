#!/bin/bash
echo -e "\033[1;33mFormating the project's c++ files...\033[0m"

clang-format -i ./*/*.hpp
clang-format -i ./*/*.cpp
clang-format -i ./*/*/*.hpp
clang-format -i ./*/*/*.cpp
clang-format -i ./*/*/*/*.hpp
clang-format -i ./*/*/*/*.cpp

echo "done" 
