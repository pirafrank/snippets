
############################################################
# How do I prompt for input in a Linux shell script?
############################################################

# The simplest and most widely available method to get user input at a 
# shell prompt is the 'read' command. The best way to illustrate its use 
# is a simple demonstration

while true; do
    read -p "Do you wish to install this program?" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Another method, pointed out by Steven Huwig, is bash's 'select' command. 
# Here is the same example using select

echo "Do you wish to install this program?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) make install; break;;
        No ) exit;;
    esac
done

# With select you don't need to sanitize the input... it prompts you 
# with your choices, and you type a number corresponding to the choice 
# you want. Select also loops automatically... there's no need for 
# a 'while true' loop to retry if they give invalid input.

###### more ######

echo "Please enter some input: "
read input_variable
echo "You entered: $input_variable"

###### more ######

read -p "Are you alright? (y/n) " RESP
if [ "$RESP" = "y" ]; then
  echo "Glad to hear it"
else
  echo "You need more bash programming"
fi
