devices_list="device1
device2
my device 3
another_device"

for device in "$devices_list"   #  "" quotes needed!
do
    # do stuff (e.g. print the variable)
    echo "$device"
done
