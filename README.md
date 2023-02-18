# dotfiles
dotfiles and random notes about setting up a new computer

## setup github
_do this so rarely, always forget the exact steps_
* reference: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
* generate a 4096 bit RSA key: `ssh-keygen -t rsa -b 4096 -f ~/.ssh/<file> -C "comment"`
    * -f to specify the filename
    * -C to add a comment
* grab the public key: `cat ~/.ssh/<file>.pub | pbcopy`
* paste into github
* add ssh config file to ~/.ssh
    * reference: https://www.jwillikers.com/my-ssh-configuration

## add a symlink
```bash
ln -s Projects/dotfiles/<filename> ~/<filename>
```

## things to install
* [homebrew](https://brew.sh/)
* [iterm2](https://iterm2.com/)
* [dracula for iterm](https://draculatheme.com/iterm)
* [oh-my-zsh](https://ohmyz.sh/`) - install plugins separately
* [bat](https://github.com/sharkdp/bat) - add as alias for cat (see .zshrc)
* [vim-plug](https://github.com/junegunn/vim-plug)
* [vim-airline](https://github.com/vim-airline/vim-airline)
* [fzf](https://github.com/junegunn/fzf)
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [tldr](https://github.com/tldr-pages/tldr)
