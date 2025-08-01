
# If /usr/share/cachyos-fish-config/cachyos-config.fish exists, source it
if test -f /usr/share/cachyos-fish-config/cachyos-config.fish; then
    source /usr/share/cachyos-fish-config/cachyos-config.fish
fi

starship init fish | source

alias cdw='cd ~/workspace'
