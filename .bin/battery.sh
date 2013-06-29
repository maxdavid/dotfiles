# battery.sh
# Returns the the computer's remaining battery life.
# Max David (pipecork)

green=#B1FF7A
red=#FF8980
lowthreshold=15

# This line sets batpercent as the remaining battery life as a percentage
batpercent=$(acpi -b | awk '{print $4}')
# Set batnumber as the percentage number, without the % sign
batnumber=$(echo $batpercent | awk 'sub(".$", "")')

# This line sets batstate as the battery state (Charging/Discharging/AC)
batstate=$(acpi -b | awk '{print $3}' | awk 'sub(".$", "")')

# if: the battery is charging AND it's not 100%, then: set percentage to green color
# elif: the battery is less than 15%, then: set percentage to red color
# else: just print the damn percentage
if [ "$batstate" = "Charging" || "AC" ] && [ "$batpercent" != "100" ]; then
	echo "<fc=$green>"$batpercent"</fc>"
elif [ "$batnumber" -le "$lowthreshold" ] && [ "$batpercent" != "100" ]; then
	echo "<fc=$red>"$batpercent"</fc>"
else
	echo $batpercent
fi

exit 0
