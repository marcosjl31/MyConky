#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/MyConky/MyConky.conf &> /dev/null &
