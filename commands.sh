#!/usr/bin/env bash

# Command for playing audio cd
mplayer -cdrom-device /dev/sr0 cdda:// -cache 5000

