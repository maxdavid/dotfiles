# battery.sh
# Returns the the computer's remaining battery life.
# Max David (pipecork)

green=#B1FF7A
red=#FF8980
lowthreshold=15

# This line sets batpercent as the remaining battery life as a percentage
batpercent=$(acpi -b | awk '{print $4}' | sed 's/,$//g')
# Set batnumber as the percentage number, without the % sign
batnumber=$(echo $batpercent | sed 's/%$//g')

# This line sets batstate as the battery state (Charging/Discharging/AC)
batstate=$(acpi -b | awk '{print $3}' | sed 's/,$//g')

# if: the battery is charging AND it's not 100%, then: set percentage to green color
# elif: the battery is less than 15%, then: set percentage to red color
# else: just print the damn percentage
if [ "$batstate" = "Unknown" ] && [ "$batnumber" != "100" ]; then
	echo "<fc=$green>"$batpercent"</fc>"
elif [ "$batnumber" -le "$lowthreshold" ] && [ "$batnumber" != "100" ]; then
	echo "<fc=$red>"$batpercent"</fc>"
else
	echo $batpercent
fi

exit 0
