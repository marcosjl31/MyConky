# MyConky

## Introduction

This is a clone version of graffias theme for conky available 
[here](https://www.pling.com/p/1805660/). This conky configuration is part of 
a GNOME Customization for Ubuntu 22.04 LTS as described in the available 
[tutorial video](https://youtu.be/lXIb-1_H-mA).

The configuration was modified to use API service from open-meteo.com
instead of openweathermap.org.

## Installation

Steps to install this config are :

* **Install conky**

  `sudo apt install conky-all curl moc`

* Clone this repo in ~/.config/conky

  `cd ~$HOME/.config/conky
   git clone https://github.com/marcosjl31/MyConky.git`

* Create autostart Desktop file

  Create a new file : ``$HOME/.config/autostart/start_conky.desktop`` with this content :

  ``` 
  [Desktop Entry]
  Type=Application
  Exec=/bin/sh -c "$HOME/.config/conky/MyConky/start.sh"
  Hidden=false
  NoDisplay=false
  X-GNOME-Autostart-enabled=true
  Name[en_US]=Conky MyConky
  Name=Conky MyConky Startup
  Comment[en_US]=Conky MyConky
  Comment=Conky MyConky
  ```
* Logout/login to relaunch Gnome WM session
