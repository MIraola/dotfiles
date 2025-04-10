This repository contains the configuration files that I use in my Arch Linux installation.

# Requirements

Install `stow`, which is a product of GNU.

```
pacman -Sy stow
```

# Installation

1. Clone the repository
2. Move to the `dotfiles` directory and run `stow`:

```
cd dotfiles
stow .
```

This will create, in the home directory, symlinks to the config files in `dotfiles`.

# Indications

1. If you want to manipulate a config file, do in in the `dotfiles`. The change will be reflected in the home directory. This is how symlinks work.

2. If you are in a new machine, before running `stow`, you can remove the following directories from the `dotfiles`:

```
rm -rf obsidian systemd cat_installer dconf pulse
```

Why are these included in this repo? because currently I only have one Arch computer, so will be cloning and running `stow` mainly from it.
