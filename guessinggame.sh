for entry in *
do
	((var++))
done
checkValue(){
	if [ "$1" -eq "$2" ]
	then
		echo "Correct! Congratulations!"
		exit 0
	fi
	if [ "$1" -lt "$2" ]
	then
		echo "Too low. Try again."
		echo ""
	fi
	if [ "$1" -gt "$2" ]
	then
		echo "Too high. Try again."
		echo ""
	fi
}
while $true
do
	echo "How many files are there?"
	read answer
	checkValue "$answer" "$var"
done