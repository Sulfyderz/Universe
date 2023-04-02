# <img width="40" height="40" src="https://gitlab.com/uploads/-/system/project/avatar/24016226/galaxy.png" alt="Banner"> Universe
By Sulfyderz.

## About
Universe is a configuration file manager.
It stores all your configuration files and can automatically import them into the corresponding application whenever it's possible.

## Folder
- **auto:** the configuration files Universe can handle;
- **manual:** the configuration files you have to manually import into the corresponding application.

## Configuration files handled by Universe:
- `.bash_profile` for **bash**;
- `.gitconfig` for **git**;
- `.inputrc` for **bash**;
- `.tmux.conf` for **tmux**;
- `.skhdrc` for **skhd**;
- `.vimrc` for **vim**;
- `.yabairc` for **yabai**;
- `.zshrc` for **zsh**.

## Configuration files not handled by Universe:
- `Raycast.raycast` for **Raycast**.

## How to install configuration files handled by Universe?
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

## Recommendation on the installation path
We recommmend you to install Universe in the following path: `~/.config/universe`.
