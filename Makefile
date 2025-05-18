SHELL := /bin/bash

pull-config:
	git pull origin master
	rsync -av --progress ./tmux/.tmux.conf ~/
	cp tmux/tmux-sessionizer ~/.local/bin/
	mkdir -p ~/.config/nvim
	rsync -av --progress ./nvim/ ~/.config/nvim/
	echo "Remember to install your tmux plugins with <leader>I"

push-config:
	cp ~/.tmux.conf ./tmux/
	rsync -av --progress ~/.config/nvim/ ./nvim/
	cp ~/.local/bin/tmux-sessionizer ./tmux/
	@if git diff --quiet && git diff --cached --quiet; then \
		echo "⚠️  No hay cambios para hacer commit."; \
	else \
		git add . && git commit -m "syncing config files on $$(date '+%Y-%m-%d %H:%M:%S')"; \
	fi
	git pull --rebase origin master
	git push origin master

