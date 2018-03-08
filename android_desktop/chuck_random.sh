CHUCK_JOKE=$(curl -s https://api.chucknorris.io/jokes/random |jq -r '.value')
am broadcast  --user 0 -a org.kustom.action.SEND_VAR -e org.kustom.action.EXT_NAME ron -e org.kustom.action.VAR_NAME DASH_TICK1 -e org.kustom.action.VAR_VALUE "$CHUCK_JOKE"
