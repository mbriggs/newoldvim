CHDIR_SHELL := $(SHELL)
define chdir
   $(eval _D=$(firstword $(1) $(@D)))
   $(info $(MAKE): cd $(_D)) $(eval SHELL = cd $(_D); $(CHDIR_SHELL))
endef

install: directories links install_vundle vundle ycm_build/install_ycm install_complete

vundle:
	vim +BundleInstall +qall

ycm_build/install_ycm:
	$(call chdir)
	cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/cpp
	make ycm_core

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
