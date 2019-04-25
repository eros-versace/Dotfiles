echo "EROS VERSACE"

getapps() { 
	sudo pacman -S i3-gaps urxvt tmux fish pywal-python vim ranger zathura weechat firefox tor deluge pulseaudio xorg xorg-server  
}

installconfig() {
if [ -f "~/.config/i3/config" ]
then 
	rm -r -f ~/.config/i3/config
else	
	mkdir ~/.config/i3
	cp ~/Dotfiles/i3/config ~/.config/i3/config
fi
}

# Verification
echo "Do you want to run the install script? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ; then
	clear && getapps && installconfig	
else
	exit	
fi


