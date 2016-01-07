#!/bin/bash

# You need to use double quotes. Single quotes prevent the shell variable from
# being interpolated by the shell. You use single quotes to prevent the shell
# from doing interpolation which you may have to do if your regular expression
# used $ as part of the pattern. You can also use a backslash to quote a $ if
# you're using double quotes.

# Also, you may need to put your variable in curly braces ${var}
# in order to help separate it from the rest of the pattern.

# Example:

string="test this"
var="test"
echo $string | grep "^$var"
