# <img width="40" height="40" src="https://gitlab.com/uploads/-/system/project/avatar/24016226/galaxy.png" alt="Banner"> Universe
By Sulfyderz.

## About
Universe is a versatile tool that effortlessly transfers software and configuration settings across multiple computers with convenience. It serves as a configuration file manager, a software configurator and a software installer. Eliminate the hassle of managing countless configuration files - Universe stores them all in one centralized location, effortlessly importing them into their corresponding software whenever possible. Take control of your software like never before with our intuitive commands, allowing you to easily configure them to match your unique preferences. And that's not all - Universe even goes the extra mile by seamlessly installing your favorite software. Streamline your digital life with Universe software and unlock a world of simplicity and efficiency.

## Directory Structure
```
.
├── build
│   ├── local
│   └── server
│       ├── client
│       └── host
└── files
    ├── local
    └── server
        ├── client
        └── host
```
- **client:** contains the file(s) for a remote machine when you are just a simple user;
- **build:** contains the `Makefile` files describing where to deploy configuration files from the **files** folder, how configure software, how install software and how update software;
- **files:** contains the configuration files handled by Universe (**auto** subfolder) and those you have to manually import into the corresponding software (**manual** subfolder);
- **host:** contains the file(s) for a remote machine when you are in charge of it;
- **local:** contains the file(s) for your local machine;
- **server:** contains the file(s) for a remote machine.

## Installation
To install, use the following command inside the Universe repository:
```
❯ ./install
```

## Updating Universe
To update Universe, use the following command:
```
❯ universe update
```

## Uninstallation
To uninstall, use the following command inside the Universe repository:
```
❯ ./uninstall
```

## Usage
This is how you use Universe:
```
❯ universe [-h | --help] [-p | --prefix] <command> [<args>]
```
### Commands
| Command | Description |
| ------ | ------ |
| `install` | Installs a list of software handled by Universe and related to your OS. If nothing is given, it installs all software related to your OS. |
| `upgrade` | Upgrades a list of software installed with `install`. If nothing is given, it upgrades all software handled by Universe and related to your OS. |
| `link` | Setups a configuration file handled by Universe and related to your OS for a given software. If nothing is given, it setups all configuration files related to your OS. |
| `command` | Applies a command for a specific software, according to your OS. |
| `list` | Shows the available arguments for a list of commands related to your OS. If nothing is given, it shows all the arguments for the `install`, `upgrade`, `link` and `command` commands related to your OS. |

> ℹ
>
> Each command has its own specific arguments. To learn more about them, call the `-h` or `--help` after the command (e.g. `universe list -h`).

### Options
| Option | Description |
| ------ | ------ |
| `-p`, `--prefix` | Shows the Universe folder and exit. |
| `-h`, `--help` | Shows this help message and exit. |

### Modes
Universe has 3 modes: 
- `Local`: Universe applies your local-machine configuration; 
- `Server (Client)`: Universe applies your remote-machine configuration. The configuration when you are just a simple user;
- `Server (Host)`: Universe applies your remote-machine configuration. The configuration when you are in charge of that machine.

According to the mode, it will apply the corresponding `Makefile` file (see [Directory Structure](#directory-structure)).

Universe automatically detects if you are on your local machine or connected to remote one. If you are on your local machine, you will be on the `Local` mode. If you are on a remote machine, you will be on the `Server (Client)` mode by default. If you

If you use one of the [commands](#commands), you will be informed in which mode you are.

## Customizing your Universe
To customize your Universe, you just have to edit Makefile
*Note: For a OS-specific command, software or configuration file, add `__` followed by the OS name (e.g. `link-zsh__macOS`).*
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
