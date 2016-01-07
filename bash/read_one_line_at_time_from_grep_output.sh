
##### read or process each line from grep output ##########

grep xyz abc.txt | while read -r line ; do
    echo "Processing $line"
    # your code goes here
done

# If you need to change variables inside the loop (and have that change be visible outside of it), you can use process substitution

while read -r line ; do
    echo "Processing $line"
    # your code goes here
done < <(grep xyz abc.txt)
