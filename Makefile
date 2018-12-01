DOTFILES = .Xdefaults .vimrc .gitconfig .config

all: link


link: $(DOTFILES)
	@command $(foreach file, $(DOTFILES), ln -rsf $(file) $(HOME);)
