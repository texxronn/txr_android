VOTD=$(curl -s http://labs.bible.org/api/?passage=votd&type=json |jq -r '.contents.quotes[0].quote')
