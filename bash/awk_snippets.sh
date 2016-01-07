# awk: Print characters before and after a pattern

$ var="abcdefghij0123456789"

echo $var
# abcdefghij0123456789

# $0 is the string, RSTART is the matched character, 3rd parameter is optional
$ echo $var | awk 'match($0,"h"){print substr($0,RSTART)}'
$ echo $var | awk 'match($0,"h"){print substr($0,RSTART+1)}'

# Now to print 3 characters before the pattern "h" in $var
$ echo $var | awk 'match($0,"h"){print substr($0,RSTART-3,3)}'
# Output:
# efg

# And to print 4 characters after the pattern "h" in $var
$ echo $var | awk 'match($0,"h"){print substr($0,RSTART+1,4)}'
# Output:
# ij01

# Combining, i.e. to print 3 characters before "h" and 4 characters after "h"
$ echo $var | awk 'match($0,"h"){print substr($0,RSTART-3,3),substr($0,RSTART+1,4)}'
# Output:
# efg ij01


# Some awk terms:
# 
# match(string, regex): Returns the position of the first match for the regular expression 
# regex in string, or 0 if no matches are found. Sets RSTART and RLENGTH variables.
#
# substr(string, start [,length]: Return length characters from the specified string, 
# starting from start. If length is not specified, return rest of record.
#
# RSTART: Index of first character matched by a successful call to the match() function.
# RLENGTH: Length of string matched by a successful call to the match() function.
