### Variable ###
pingCount=5
###

# Read the user input
read -p "Enter target hostname or IP (default google.com) : " hostip

# If hostip variable is empty, use google.com. Then, use user choice.
if [ -z $hostip ]
then
	ping -c $pingCount google.com
else
	ping -c $pingCount $hostip
fi
