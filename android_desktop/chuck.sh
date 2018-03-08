QT=$(curl -s https://api.chucknorris.io/jokes/random |jq -r '.value')
am broadcast --user 0 -a com.ron.chucktext -e chucktext "$QT"
