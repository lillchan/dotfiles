# dotfiles

dotfiles and random notes about setting up a new computer

## setup github

* reference: <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account>
* generate a 4096 bit RSA key: `ssh-keygen -t rsa -b 4096 -f ~/.ssh/<file> -C "comment"`
  * -f to specify the filename
  * -C to add a comment
* grab the public key: `cat ~/.ssh/<file>.pub | pbcopy`
* paste into github
* add ssh config file to ~/.ssh
  * reference: <https://www.jwillikers.com/my-ssh-configuration>

## add symlinks

* files to symlink: `.gitconfig`, `.zshrc`, `.vimrc`
* repos might not be in the Project directory

```bash
ln -s Projects/dotfiles/<filename> ~/<filename>

# add -f flag to overwrite existing links
ln -s Projects/dotfiles/<filename> ~/<filename>
```

## things to install

* VS Code
  * [launch from command line](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line)
  * plugins
    * prettier
    * gitlens
    * markdownlint
    * shellcheck
* [iterm2](https://iterm2.com/)
  * install theme - [dracula for iterm](https://draculatheme.com/iterm)
  * use natural text editing - Preferences -> Profiles -> Keys -> Load Preset... -> Natural Text Editing
    * this way, cmd + -> will go to end of line and option + -> will jump words
* [homebrew](https://brew.sh/)
  * installs Xcode Command Line Tools
  * final step - add homebrew to PATH
* [oh-my-zsh](https://ohmyz.sh/)
* [bat](https://github.com/sharkdp/bat)
  * `brew install bat`
  * added as alias for cat (in .zshrc)
* [vim-plug](https://github.com/junegunn/vim-plug)
  * auto installed in .zshrc file
  * to install plugins with plugin manager: `vi ~/.vimrc` `:PlugInstall`
  * plugin(s) to install: [vim-airline](https://github.com/vim-airline/vim-airline)
* [fzf](https://github.com/junegunn/fzf)
  * `brew install fzf`
  * install key bindings and fuzzy completion: `$(brew --prefix)/opt/fzf/install`
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [tldr](https://github.com/tldr-pages/tldr)
