## Tasks 
- [Add git branch to terminal](https://dev.to/sonyarianto/how-to-add-git-branch-name-to-shell-prompt-in-ubuntu-1gdj)
- [Set-up git profiles](https://dev.to/sohammondal/how-to-setup-2-separate-git-profiles-on-a-single-device-5b95)
- Add ssh-keys
- Sync up vscode settings

### External HDD not mounting issue

[Reference](https://askubuntu.com/questions/145902/unable-to-mount-windows-ntfs-filesystem-due-to-hibernation)

Find out partition name from Dash > `disks`.

```bash

$ sudo ntfsfix /dev/sdXY # XY is the partition, e.g. a2 (/dev/sda2) or b1 (/dev/sdb1)

```

### Zoom in-out terminal

```text
Zoom IN            :  Ctrl Shift +  
Zoom Out           :  Ctrl - 
Neutral ( 100% )   :  Ctrl ) 
```