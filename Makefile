DOTFILES = .Xdefaults .vimrc .gitconfig


link: $(DOTFILES)
	$(foreach file, $(DOTFILES), ln -fnv $(file) $(HOME);)
	  
