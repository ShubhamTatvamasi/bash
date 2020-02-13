# Bashrc

Personal bash settings

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
