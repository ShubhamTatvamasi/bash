# bash

Personal bash settings

pin the XCode library from upgrading
```bash
brew pin llvm
```

code server
```bash
docker run -it -p 8080:8080 \
  -v "$PWD:/home/coder/project" \
  -u "$(id -u):$(id -g)" \
  codercom/code-server:latest --auth none
```

convert all webp files to png
```bash
find . -type f -name '*.webp' -exec bash -c ' \
  filename=$(echo {} | cut -c 3- | rev | cut -c 6- | rev).png; \
  dwebp {} -o ${filename}' \;
```

source and export
```bash
source tmp.txt
export $(cut -d= -f1 tmp.txt)
```

Count Files and Directories Recursively:
```bash
tree -a | tail -1
```
---

Rip Windows 10 - macOS 
```bash
diskutil eraseDisk MS-DOS "WIN10" GPT disk2
hdiutil mount Win10_1909_English_x64.iso
cp -rp /Volumes/CCCOMA_X64FRE_EN-US_DV9/* /Volumes/WIN10/
hdiutil unmount /Volumes/CCCOMA_X64FRE_EN-US_DV9/
```
---

Get the server IP
```bash
curl ifconfig.co
```

```bash
ncdu # NCurses Disk Usage
```
---

config for `.zshrc` `.bashrc` `.profile`
```bash

# docker alias
alias d='docker'
alias di='d images'
alias dp='d ps'
alias dpa='dp -a'

# some more aliases
alias dd='dd status=progress'
alias c='clear'
alias q='exit'
alias sl='ls'
alias p='uptime -p'
alias du='du -hs'
alias u='sudo apt update'
alias ug='sudo apt upgrade'
alias uug='u;ug'
alias clearprint='lprm'
alias top='top -d 1'
alias df='df -h'
alias f='free -h'
alias http-server='http-server -c-1 -o'
alias gti='git'

alias mkctl="microk8s kubectl"

export EDITOR="vim"

######### EXTRAS ###########

# zsh plugins
plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting
docker docker-compose
)

# sudo service smbd start
# sudo service smbd stop
# sudo service smbd restart

# Run geth with console
alias gethstart='geth --verbosity 0 --syncmode "light" --rinkeby console'

# Run sudo GUI apps with wayland
alias s='xhost local:root > /dev/null'

# Restart sound deamon
alias resetsound='pulseaudio -k && sudo alsa force-reload'

# Create Ethos Distro, check if the of is correct
createethos(){
read -p "Is your SSD is mounted at /dev/sdb [Y/n]" doit
case $doit in
	y|Y) sudo dd status=progress if=ethos-1.2.3.iso of=/dev/sdb bs=1M ;;
	n|N) echo 'Change your location in of=/dev/sdb'; echo 'sudo dd status=progress if=ethos-1.2.3.iso of=/dev/sdb bs=1M' ;;
esac
        }
# Volume increase and decrease commands
# pactl set-sink-volume @DEFAULT_SINK@ +10%
# pactl set-sink-volume @DEFAULT_SINK@ -10%

export PATH=$PATH:/usr/local/go/bin

#iptables -I OUTPUT 1 -d 45.55.255.55 -j DROP
#iptables -I OUTPUT 1 -d 45.55.41.223 -j DROP

```


```bash
find . -type f -name '*.yml' -exec sed -i '' '1i\
---
' {} +
```

