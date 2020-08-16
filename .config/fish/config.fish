
# Map caps lock to esc
if uname -o | grep -i linux && test -f ~/.Xmodmap
	xmodmap - <~/.Xmodmap
end
