install: directories links install_vundle vundle install_ycm install_complete

vundle:
	vim +BundleInstall +qall

install_command_t:
	cd bundle/Command-T/ruby/command-t; ruby extconf.rb; make

install_ycm:
	cd ycm_build; cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/cpp; make ycm_core

install_vundle:
	git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

directories:
	mkdir -p bundle
	mkdir -p backup
	mkdir -p bin
	mkdir -p ycm_build

links:
	ln -sf $(HOME)/.vim/vimrc $(HOME)/.vimrc
	ln -sf $(HOME)/.vim/gvimrc $(HOME)/.gvimrc

install_complete:
	touch .plugins_installed
