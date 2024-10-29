#!/bin/bash

# This script is to get weather data from openweathermap.com in the form of a json file
# so that conky will still display the weather when offline even though it doesn't up to date

# get your city latitude/longitude from https://www.latlong.net by giving city and country
# Ex: Toulouse,FR
lat="43.603951"
lon="1.444510"

# this is the url to retrieve forecast data. Please refer to https://open-meteo.com/en/docs 
# to view all availables parameters.
url="https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current=relative_humidity_2m,wind_speed_10m,temperature_2m,weather_code&daily=weather_code,temperature_2m_max,temperature_2m_min&timezone=Europe%2FBerlin&forecast_days=1"

curl ${url} -s -o ~/.cache/weather.json
