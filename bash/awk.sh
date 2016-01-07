### Print Columns by Number using AWK
# Print all columns
awk '{print $0}' file

# Print the 3rd column
awk '{print $3}' file

# Print the 1st and the 3rd columns.
awk '{print $1 $3}' file



### Change Field Separator in AWK
# By default AWK uses both space and tab characters as column delimiters

# Use "," (comma) as a separator and print the 2nd column
awk -F "," '{print $2}' file

# Use ":" (colon) as a separator and print the 3rd column
awk -F ":" '{print $3}' file



### Exclude Specific Columns using AWK
# Print all other columns but not the 3rd one.
awk '{$3=""; print $0}' file

# Print all other columns but not the 1st and the 2nd.
awk '{$1=$2=""; print $0}' file



### Print or Exclude a Range of Columns using AWK
# Print a range of columns from the 2nd till the 4th
awk -v f=2 -v t=4 '{for(i=f;i<=t;i++) printf("%s%s",$i,(i==t)?"\n":OFS)}' file

# Exclude a column range from the 2nd till the 4th and print the rest of the columns
awk -v f=2 -v t=4 '{for(i=1;i<=NF;i++)if(i>=f&&i<=t)continue;else printf("%s%s",$i,(i!=NF)?OFS:ORS)}' file
