# .dotfiles
---

my dotfiles setup for linux and wsl.

## essentials
- git
- tmux
- neovim
- bash/zsh
- fd-find 
- xclip (if u want share clipboard in wsl)

## installing

```bash
git clone https://github.com/kushp/dotfiles ~/dotfiles
```

then run the install script: 

```bash
cd ~/dotfiles
./install.sh
```

## what it does

script will install the dotfiles and create a backup of the existing dotfiles.
it will also create a symlink to their resective locations.
the backups for the previous dotfiles will be stored in `~/.dotfiles-backup` incase you might want to revert or reinstall

The current config will also pre-install the language servers for the following languages:
- clangd (C/C++)
- pyright (python)
- stylua (lua)
- luals (lua)
- tsls (typescript)


# additional notes for nvim

if you want to use the language servers, install:
- unzip
- build-essential packages (for clangd)
- nodejs (for typescript language server)
- python3/pip3 (for pyright)

- the current bashrc file has a hardcoded path to the vscode since I am using wsl with no windows path appended (interop).
- it also includes hard coded path to neovim since I built it from source.

# possible updates...
- I might change shell to zsh since oh-my-zsh has great plugins and its faster
- I might update the tmux config since its pretty default for now





