if [ "$USER" == "live" ]; then
	if [ "$(tty)" == "/dev/tty1" ]; then
		startx
		echo "Run \"startx\" to start Xorg display server, \"help\" to list commands, or \"exit\" to log out."
	fi
fi
