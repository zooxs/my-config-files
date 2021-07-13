#! /bin/sh

# list config files
FilesConfig=(
    $HOME/.bash*
    $HOME/.xinitrc
    $HOME/.Xresources
    $HOME/.config/bspwm/bspwmrc
    $HOME/.config/sxhkd/sxhkdrc
    $HOME/.config/polybar/config
    $HOME/.config/polybar/launch.sh
    $HOME/.tmux.conf
    $HOME/.fehbg
)

# list directories
Directory=(
    $HOME/script
    $HOME/.vim
    $HOME/development
    $HOME/.config/wal
    
)

notify-send "Backup data: still in proggress"

# check if files are exist and backup them to backup directory
for i in "${FilesConfig[@]}"
do 
    if [[ -f $i ]]; then
	rsync -av $i $HOME/backup/configFiles
    else
	echo "$i: file is not exist"
    fi
done

# check if directories are exist and backup them to backup directory
for i in "${Directory[@]}"
do 
    if [[ -d $i ]]; then
	rsync -av $i $HOME/backup
    else
	echo "$i: directory is not exist"
    fi
done

# go to backupp directory, add everything and set a commit
cd $HOME/backup
git add .
git commit -m "backup data at $(date)"
cd

notify-send "Backup: Completed!"
