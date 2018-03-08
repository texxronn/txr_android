STJAMES=ChIJcexqOBWuEmsRK1a72WYib80
INGLEBURN=ChIJse9sV3zrEmsRzOD__WvL23Q
KEY=AIzaSyAohDqg5TiFUKm7ctK_L5c1N2ZSE7pK-Gg

if [ "2" = "$1" ]; then
	FROM="place_id:$STJAMES"
	TO="place_id:$INGLEBURN"
else
	FROM="place_id:$INGLEBURN"
	TO="place_id:$STJAMES"
fi

curl -s https://maps.googleapis.com/maps/api/directions/json\?origin\=$FROM\&destination\=$TO\&mode\=transit\&alternatives=true\&key\=$KEY | \
#jq '.routes[] |.legs[0].departure_time.text + .legs[0].start_address|split(",")'
jq '.routes[] |.legs[0].departure_time.value'\
|xargs -i date -d @{} "+%H:%M"
