STJAMES=ChIJcexqOBWuEmsRK1a72WYib80
INGLEBURN=ChIJse9sV3zrEmsRzOD__WvL23Q
KEY=AIzaSyAohDqg5TiFUKm7ctK_L5c1N2ZSE7pK-Gg

if [ "I" = "$1" ]; then
	PLACE1="place_id:$STJAMES"
	PLACE2="place_id:$INGLEBURN"
else
	PLACE2="place_id:$STJAMES"
	PLACE1="place_id:$INGLEBURN"
fi

curl -s https://maps.googleapis.com/maps/api/directions/json\?origin\=$PLACE1\&destination\=$PLACE2\&mode\=transit\&alternatives=true\&key\=$KEY | \
#jq '.routes[] |.legs[0].departure_time.text + .legs[0].start_address|split(",")'
jq '.routes[] |.legs[0].departure_time.value'\
|xargs -i date -d @{} "+%H:%M"
