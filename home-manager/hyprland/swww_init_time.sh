#!/bin/sh

# This allows you to control which image to init the daemon with according
# to the time of day. You may change the match cases as you see fit.
# This currently only takes hours into account, but it should be easy to
# modify to also use minutes, or days of the week, if you want.
#
# Use it simply by calling this script instead of swww-daemon

case $(date +%H) in
	00 | 01 | 02 | 03 | 04 | 05 | 06 | 07) # 0:00 to 7:59, early morning

		swww-daemon && swww img ~/NixOS/wallpapers/gracile_branches.jpg
		;;
	08 | 09 | 10 | 11 | 12 | 13 | 14 | 15) # 8:00 to 15:59, morning/midday

		swww-daemon && swww img ~/NixOS/wallpapers/aeuna_under-the-blue-sky-4.jpg
		;;
	16 | 17 | 18 | 19) # 16:00 to 19:59, late afternoon/evening

    swww-daemon && swww img ~/NixOS/wallpapers/axle_end-of-the-summer.jpg
    ;;
  20 | 21 | 22 | 23) # 20:00 to 23:59, evening/nighttime

		swww-daemon && swww img ~/NixOS/wallpapers/bakairis_rainy-world.png
		;;
esac
