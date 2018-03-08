POM_DURATION=25
for i in $(seq 1 $POM_DURATION); do 
  POM_PCT=$(echo "$i *100/ $POM_DURATION " | bc)
  am broadcast --user 0 -a org.kustom.action.SEND_VAR -e org.kustom.action.EXT_NAME ron -e org.kustom.action.VAR_NAME pom_progress_pct -e org.kustom.action.VAR_VALUE "$POM_PCT" > /dev/null
  sleep 5
done
