# <img width="40" height="40" src="https://gitlab.com/uploads/-/system/project/avatar/24016226/galaxy.png" alt="Banner"> Universe
By Sulfyderz.

## About
Experience the unparalleled convenience of Universe - your ultimate configuration file manager, application configurator, and software installer. Eliminate the hassle of managing countless configuration files - Universe stores them all in one centralized location, effortlessly importing them into their corresponding applications whenever possible. Take control of your applications like never before with our intuitive commands, allowing you to easily configure them to match your unique preferences. And that's not all - Universe even goes the extra mile by seamlessly installing your favorite software, including popular tools like Homebrew. Streamline your digital life with Universe software and unlock a world of simplicity, efficiency, and endless possibilities.

## Folder
- **auto:** the configuration files Universe can handle;
- **manual:** the configuration files you have to manually import into the corresponding application.

## Configuration files handled by Universe
### Non-specific
- `.bash_profile` for **bash**;
- `.gitconfig` for **git**;
- `.inputrc` for **bash**;
- `starship.toml` for **starship**;
- `.tmux.conf` for **tmux**;
- `.vimrc` for **vim**.
### Linux-specific
- `.zshrc` for **zsh**.
### macOS-specific
- `.skhdrc` for **skhd**;
- `.yabairc` for **yabai**;
- `.zshrc` for **zsh**.

## Configuration files not handled by Universe
### macOS-specific
- `Raycast.raycast` for **Raycast**.

## Software installation handled by Universe
### Non-specific
- **tmux-resurrect**.
### macOS-specific
- **homebrew**;
- **starship**;
- **tmux**;
- **zsh-autosuggestions**.

## Configuration command available with Universe
### Non-specific
- **configure-conda-mute** for deactivating the prompt modifier of conda (useful only when starship is applied).

## How to use Universe?
You just have to use the `Makefile`.
### Non-specific
To apply a command `x`:
```
make x
```
To install a software `x`:
```
make install-x
```
To import a configuration file for a software `x`:
```
make link-x
```
### Linux-specific
To install all software and import all configuration files:
```
make linux
```
To only install all software:
```
make install__linux
```
To only import all configuration files:
```
make link__linux
```
To install a particular software or import a particular configuration file for a software, add `-` followed by the corresponding software just before `__linux` (e.g. `link-zsh__linux`).

### macOS-specific
To install all software and import all configuration files (`macOS` is optional):
```
make macOS
```
To only install all software:
```
make install__macOS
```
To only import all configuration files:
```
make link__macOS
```
To install a particular software or import a particular configuration file for a software, add `-` followed by the corresponding software just before `__macOS` (e.g. `link-zsh__macOS`).

## Recommendation on the installation path
We recommmend you to install Universe in the following path: `~/.config/universe`.
