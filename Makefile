files = .aliases .bashrc .bash_profile .profile .zshrc \
		.zprofile .Rprofile .vimrc .nvimrc .gitconfig .gitlocal .tmux.conf .tmux-osx.conf

all:
	for f in $(files); do echo $$f; rm -r ./$$f 2>/dev/null; cp -r ~/$$f ./$$f; done \
	&& git add -A \
	&& git commit -m "Update dotfiles at $$(date)" \
	&& git push
