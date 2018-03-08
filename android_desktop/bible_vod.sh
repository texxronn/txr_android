RESP=$(curl -s http://labs.bible.org/api/?passage\=votd\&type\=json) 
VERSE=$(echo "$RESP" | jq '.[0].text')
BOOK=$(echo "$RESP" | jq '.[0].bookname')
LOC=$(echo "$RESP" | jq '.[0]|.chapter + ":" +  .verse')

#echo $BOOK $LOC $VERSE
am broadcast  --user 0 -a org.kustom.action.SEND_VAR -e org.kustom.action.EXT_NAME ron -e org.kustom.action.VAR_NAME BIBLE_VERSE -e org.kustom.action.VAR_VALUE "$VERSE"
