# Generate a pin of N digits

# Made for Python 2. Doesn't work on Python 3.

# you can call it in one line of bash, too
# python -c 'from random import SystemRandom as r; print(r().randint(0,10**6-1))'

from sys import exit
from random import SystemRandom as r

print "*** RPPG (Random Python PIN Generator) ***"
n = raw_input("Insert PIN length: ")
n = int(n)

try:
    print ""
    print (r().randint(0,10**(n)))
    print ""
except ValueError:
    print "Please, insert an integer number! Quitting..."
else:
    print "Unknown error! Quitting..."
finally:
    exit()
