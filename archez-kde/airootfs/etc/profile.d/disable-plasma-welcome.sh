if [ "$(whoami)" == live ]; then
    [ -z "$HOME" ] && HOME="/home/live"
    mkdir -p "$HOME/.config"
    echo "[General]" > "$HOME/.config/plasma-welcomerc" && \
    echo "LastSeenVersion=9999.9999.9999" >> "$HOME/.config/plasma-welcomerc" && \
    echo >> "$HOME/.config/plasma-welcomerc" && \
    sudo rm -f /etc/profile.d/disable-plasma-welcome.sh
fi
