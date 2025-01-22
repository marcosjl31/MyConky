#!/bin/bash

# This script is to get name location from lat/lon coordinates present in the weather.json file
# so that conky will display it correctly.
# Google api is used

lat=`cat ~/.cache/weather.json | jq -r '.latitude'`
lon=`cat ~/.cache/weather.json | jq -r '.longitude'`

# this is the url to retrieve forecast data. Please refer to https://open-meteo.com/en/docs 
# to view all availables parameters.
#url="http://api.openweathermap.org/geo/1.0/reverse?lat={lat}&lon={lon}"
url="https://api-bdc.net/data/reverse-geocode-client?latitude=${lat}&longitude=${lon}"

#curl ${url} -s 
wget -qO - ${url}
