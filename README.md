# REPEATED SUBSTRING
This is the solution to the given task.

# Task

Develop TDD with ruby.

You are to find the longest repeated substring in a given text. Repeated substrings may not overlap. If more than one substring is repeated with the same length, print the first one you find.(starting from the beginning of the text).
NOTE: The substrings can't be all spaces.


## Example
### Input
The program should accept as its first argument a string/(more complex a path to a filename). The input string/file contains several lines. Each line is one test case. Each line contains a test string. E.g.

```
banana
am so uniqe
```

### Output

For each set of input produce a single line of output which is the longest repeated substring. If there is none, print out the string NONE. E.g.

```
an
NONE
```

# Setup

```
git clone git@github.com:simon-isler/repeated-substring.git
cd repeated_substring
gem install bundler
bundle install
```

# Run Tests

```
rspec
```

## Credits

Challenge from https://www.codeeval.com/open_challenges/53/, adapted by cyrilkyburz
