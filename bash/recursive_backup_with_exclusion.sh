
# The -a ensures all permissions and times on files are unchanged. 
# The -m will omit empty directories. 
# -v is for verbose output. 

# For a dry run add a -n, it will tell you what it would do but not actually copy anything.

INPUT="/stuff/to/backup/"
OUTPUT="/where/the/backup/needs/to/be/"

rsync -avm --include='*.txt' -f 'hide,! */' "$INPUT" "$OUTPUT"

# redirecting output and errors to log file
rsync -avm --include='*.txt' -f 'hide,! */' "$INPUT" "$OUTPUT" > ./backup_script.log 2>&1

# with exclusion of all attachments subfolders
rsync -avm --exclude attachments/ --include='*.html' -f 'hide,! */' "$INPUT" "$OUTPUT"
