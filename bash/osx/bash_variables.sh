if (( "$charge" <= 40 )) ; then
   echo "battery charge is ${charge}%"
   thescript='display notification "You can unplug the power cord to extend the overall battery life." with title "BatteryLifeExtender" subtitle '
   the2part="\"Charge is ${charge}%\""
   /usr/bin/osascript -e "${thescript}${the2part}"  
fi


the_url="\"http://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash\""
the_script='tell application "Safari" to set the URL of the front document to '
osascript -e "${the_script}${the_url}"
