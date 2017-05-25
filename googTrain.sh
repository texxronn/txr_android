STJAMES=ChIJcexqOBWuEmsRK1a72WYib80
INGLEBURN=ChIJse9sV3zrEmsRzOD__WvL23Q
KEY=AIzaSyAohDqg5TiFUKm7ctK_L5c1N2ZSE7pK-Gg

PLACE2="place_id:$STJAMES"
PLACE1="place_id:$INGLEBURN"

curl -s https://maps.googleapis.com/maps/api/directions/json\?origin\=$PLACE1\&destination\=$PLACE2\&mode\=transit\&key\=$KEY | jq '.routes[] |.legs[]|.steps[]|.html_instructions + " from " + .transit_details.departure_stop.name + " at " + .transit_details.departure_time.text '
