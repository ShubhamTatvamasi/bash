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
alias f='free -h'

# Run geth with console
alias gethstart='/opt/geth-alltools-linux-amd64-1.8.1-1e67410e/geth --verbosity 0 --syncmode "light" --rinkeby console'

# Run sudo GUI apps with wayland
alias s='xhost local:root > /dev/null'

# Restart sound deamon
alias resetsound='pulseaudio -k && sudo alsa force-reload'

# use this command for installing the image "docker run -it ubuntu:trusty /bin/bash"
# start ubuntu 14.04 image
alias ubuntu='sudo docker start -i wonderful_goldstine'

# Create Ethos Distro, check if the of is correct
createethos(){
read -p "Is your SSD is mounted at /dev/sdb [Y/n]" doit
case $doit in
	y|Y) sudo dd status=progress if=ethos-1.2.3.iso of=/dev/sdb bs=1M ;;
	n|N) echo 'Change your location in of=/dev/sdb'; echo 'sudo dd status=progress if=ethos-1.2.3.iso of=/dev/sdb bs=1M' ;;
esac
        }

