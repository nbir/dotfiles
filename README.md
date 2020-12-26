# dotfiles

Dotfiles and macOS bootstrap scripts.

## Prerequisite

Install Apple's command-line tools. This will install `git` etc.

```bash
xcode-select install
```

## Setup

Run the `install.sh` script in terminal to install tools and apps.

```bash
./install.sh
```

Run the `dotfiles.sh` script to symlink dotfiles.

```bash
./dotfiles.sh
```

Run the `setup.sh` script to add aliases and source other files.

```bash
./setup.sh
```

Run the `macos-defaults.sh` script to configure macOS settings.

```bash
./macos-defaults.sh
```

Run the `sync.sh` script to sync secrets and app settings.

```bash
./sync.sh
```

## Post Setup

To sync iTerm2 preferences, go to Preferences > General > Preferences. Check the following:
* Load preferences from a custom folder or URL
* Save changes to folder when iTerm2 quits
