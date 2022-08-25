# <img width="40" height="40" src="https://gitlab.com/uploads/-/system/project/avatar/24016226/galaxy.png" alt="Banner"> Universe
By Sulfyderz.

## About
Universe sets up configuration files.

## Configuration files
- `.bash_profile` for **bash**;
- `.gitconfig` for **git**;
- `.inputrc` for **bash**;
- `.tmux.conf` for **tmux**;
- `.skhdrc` for **skhd**;
- `.vimrc` for **vim**;
- `.yabairc` for **yabai**;
- `.zshrc` for **zsh**.

## How to use it?
You just have to use the `Makefile`.<br/>
To only install all plugins:<br/>
```
make plugin-all
```
To only create all symbolic links only:
```
make link-all
```
For a specific plugin or link, replace `all` with the corresponding plugin or link.
