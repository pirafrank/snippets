import os, sys

print 'real path: '+os.path.realpath(__file__)

abs_work_path = os.path.abspath(os.path.dirname(sys.argv[0]))
print '>>>>>> '+abs_work_path
