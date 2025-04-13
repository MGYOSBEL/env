pull-config:
	git pull origin master
	cp -R tmux/* ~
	cp -R nvim ~/.config

push-config:
	cp ~/.tmux.conf tmux
	# cp -R ~/.tmux tmux
	rsync -av --progress ~/.tmux ./tmux --exclude='.git'
	rsync -av --progress ~/.config/nvim ./nvim
	git add . && git commit -am "syncing config files on $(date)"
	git pull origin master && git push origin master
