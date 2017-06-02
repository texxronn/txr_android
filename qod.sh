QT=$(curl -s http://quotes.rest/qod.json |jq -r '.contents.quotes[0].quote')
echo $QT
am broadcast --user 0 -a org.kustom.action.SEND_VAR -e org.kustom.action.EXT_NAME ron -e org.kustom.action.VAR_NAME DASH_CONST -e org.kustom.action.VAR_VALUE "$QT"
