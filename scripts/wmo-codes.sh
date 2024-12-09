#!/bin/bash

# Usage : echo "weather-code" |wmo-codes.sh
# Gives a Description for weather code

read input

case "$input" in
  0)
    Description="Sunny";;
  1)
    Description="Mainly Sunny";;
  2)
    Description="Partly Cloudy";;
  3)
    Description="Overcast Clouds";;
  45)
    Description="Foggy";;
  48)
    Description="Rime Fog";;
  51) 
    Description="Light Drizzle";;
  53) 
    Description="Drizzle";;
  55) 
    Description="Heavy Drizzle";;
  56) 
    Description="Light Freezing Drizzle";;
  57) 
    Description="Freezing Drizzle";;
  61) 
    Description="Light Rain";;
  63) 
    Description="Rain";;
  65) 
    Description="Heavy Rain";;
  66) 
    Description="Light Freezing Rain";;
  67) 
    Description="Freezing Rain";;
  71) 
    Description="Light Snowfall";;
  73) 
    Description="Snow";;
  75) 
    Description="Heavy Snow";;
  77)
    Description="Snow Grains";;
  80|83) 
    Description="Light Showers";;
  81) 
    Description="Showers";;
  82) 
    Description="Heavy showers";;
  84|85) 
    Description="Light Snow Showers";;
  86) 
    Description="Snow showers";;
  95)
    Description="Thunderstorm";;
  96)
    Description="Light Thunderstorm With Hail";;
  99) 
    Description="Thunderstorm With Hail";;
esac

echo $Description
