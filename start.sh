#!/bin/bash

killall conky
sleep 2s
		
conky -u 30 -c $HOME/.config/conky/MyConky/MyConky.conf &> /dev/null &
