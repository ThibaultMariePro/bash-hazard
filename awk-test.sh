#/bin/bash

echo "awk will print word number 2 of testfile.txt :"
awk '{print $2}' testfile.txt

echo trying to print first element of csvtest.txt
awk -F, '{print $1}' csvtest.txt

echo sentence with character extraction by cut on a word extraction by awk:
echo "just get this word : hello" | awk -F: '{print $2}' | cut -c2

