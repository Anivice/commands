#!/usr/bin/env bash

# Command for playing audio cd
mplayer -cdrom-device /dev/sr0 cdda:// -cache 5000

# Configuring Mplayer
# ou may want to add all options and parameter in your $HOME/.mplayer/config file, so you don’t have to specify every time.
# Edit ~/.mplayer/config

# default cdrom
# cdrom="/dev/sr0"
# cache setting
# cache=5000
# set audio driver
# ao=alsa


# play audio from capture cards
pactl load-module module-loopback source="alsa_input.pci-0000_00_1b.0.analog-stereo" sink="alsa_output.pci-0000_00_08.0.analog-stereo"
pactl unload-module module-loopback
