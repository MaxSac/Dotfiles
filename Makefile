DOTFILES = .Xdefaults .vimrc .gitconfig .config .zshrc

all: link


link: $(DOTFILES)
	@command $(foreach file, $(DOTFILES), ln -rsf $(file) $(HOME);)
