# some more ls aliases
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias dd='dd status=progress'
alias c='clear'
alias q='exit'
alias sl='ls'
alias p='uptime -p'
alias d='du -hs'
alias u='sudo apt-get update'
alias ug='sudo apt-get upgrade'
alias viper='sudo docker start -i viper'
alias clearprint='lprm'
alias top='top -d 1'
alias df='df -h'

# Run sudo GUI apps with wayland
alias s='xhost local:root > /dev/null'

# Restart sound deamon
alias resetsound='pulseaudio -k && sudo alsa force-reload'

# Create Ethos Distro
alias createethos='sudo dd status=progress if=ethos-1.2.3.iso of=/dev/sdb bs=1m'

