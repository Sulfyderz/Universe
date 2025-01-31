# Universe

## About
Universe is a versatile tool that effortlessly transfers software and configuration settings across multiple computers with convenience. It serves as a configuration file manager, a software configurator and a software installer. Eliminate the hassle of managing countless configuration files - Universe stores them all in one centralized location, effortlessly importing them into their corresponding software whenever possible. Take control of your software like never before with our intuitive commands, allowing you to easily configure them to match your unique preferences. And that's not all - Universe even goes the extra mile by seamlessly installing your favorite software. Streamline your digital life with Universe software and unlock a world of simplicity and efficiency.

**⚠ Universe is now deprecated and no longer maintained. See [unvX](https://github.com/Sulfyderz/unvX) for a better solution.**

## Table of Contents

- [Directory Structure](#directory-structure)
- [Installation](#installation)
- [Updating Universe](#updating-universe)
- [Uninstallation](#uninstallation)
- [Usage](#usage)
    - [Commands](#commands)
    - [Options](#options)
    - [Modes](#modes)
- [Customizing your Universe](#customizing-your-universe)

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
- **build:** contains the **Makefile** files describing where to deploy configuration files from the **files** directory, how configure software, how install software and how update software;
- **files:** contains the configuration files handled by Universe and those you have to manually import into the corresponding software;
    > ⓘ The configuration files handled by Universe are stored in the **auto** subdirectories. The ones you have to manually import into the corresponding software are stored in the **manual** subdirectories. 
    > The **auto** and **manual** subdirectories are located in the **local**, **client** and **host** subdirectories of the **files** directory.
    >> ⓘ Both the **auto** and **manual** directories have further subdirectories within them: a **all** directory and others such as **macOS** or **linux**. A **all** directory contains the files shared among OS. The others are OS specific.
- **host:** contains the file(s) for a remote machine when you are a superuser and in charge of that machine;
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

> ⓘ
> Each command has its own specific arguments. To learn more about them, call the `-h` or `--help` after the command (e.g. `universe list -h`).

### Options
| Option | Description |
| ------ | ------ |
| `-p`, `--prefix` | Shows the Universe directory and exit. |
| `-h`, `--help` | Shows this help message and exit. |

### Modes
Universe has 3 modes: 
- **Local**: Universe applies your local-machine configuration; 
- **Server (Client)**: Universe applies your remote-machine configuration, the one when you are just a simple user;
- **Server (Host)**: Universe applies your remote-machine configuration, the one when you are a superuser and in charge of that machine.

According to the mode, it will apply the corresponding **Makefile** file (see [Directory Structure](#directory-structure)).

Universe automatically detects if you are on your local machine or connected to remote one. If you are on your local machine, you will be on the **Local** mode. If you are on a remote machine, you will be on the **Server (Client)** mode by default. If you are on a remote machine and want to activate the **Server (Host)** mode, simply add the `-s` option after any [command](#commands).

If you use a [command](#commands), you will be informed in which mode you are.

## Customizing your Universe
To customize your Universe, you just have to edit the **Makefile** files (see [Directory Structure](#directory-structure)) and follow a norm for the rules you declare.

Here is the rule norm to respect:
```
command-argument__os:
    -instructions
```
- `command`: The [command](#commands) that rule concerns;
- `-argument`: The argument name that should be given to the `command` to activate that rule. `-argument` is optional only if `__os` is defined. If `-argument` is not given, that rule is activated when you call the `command` without arguments (e.g. `universe install`);
    > ⚠ `-argument` has to start by a dash.

    > ⚠ `-argument` can contain any special character except underscore (e.g. `-python3-3.10`). 
- `__os`: The OS that rule concerns. `__os` is optional. If it's not defined, that rule applies to all OS. 

    Here are the possible values:

    | OS | Value |
    | ------ | ------ |
    | Debian | `__linux` |
    | macOS | `__macOS` |
    | Ubuntu | `__linux` |
- `-instructions`: The instructions of that rule.
    > ⚠ Each line has to start by a dash in order to handle failure.
