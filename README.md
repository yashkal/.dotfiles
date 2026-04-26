# Dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Getting Started

```bash
git clone https://github.com/yashkal/.dotfiles.git
cd .dotfiles
make all
```

## Dotfiles Management with GNU Stow

### Install GNU Stow

```bash
brew install stow
```

### Install dotfiles

From the `~/.dotfiles` directory, run:

```bash
# Install all packages
stow bash tmux

# Or install individual packages
stow bash
stow tmux
```

### Uninstall dotfiles

```bash
# Uninstall all packages
stow -D bash tmux

# Or uninstall individual packages
stow -D bash
stow -D tmux
```

## Structure

Each subdirectory represents a "package" that stow will symlink:

- `bash/` - Bash configuration (.bash_profile, .bashrc, .aliases)
- `tmux/` - Tmux configuration (.tmux.conf)

## Adding new packages

1. Create a new directory for the package (e.g., `vim/`)
2. Place files in the directory structure as they should appear in `$HOME`
3. Run `stow <package-name>` to create symlinks

## Notes

- Stow creates symlinks from `$HOME` to files in this directory
- Run stow commands from the `~/.dotfiles` directory
- If a file already exists in `$HOME`, stow will warn you and not overwrite it

## Vim Tips

To create file in the same directory as the file in current buffer, run:

```vim
:vs %:h<filename>
" Read below for more info
:h expand()
```

## Bash Tips

Run the following command to go to History Expansion in Bash man page:

```bash
man -P 'less -p ^HISTORY\ EXPANSION' bash
```

Shows the table of contents for bash:

```bash
man bash | grep '^[A-Z]'
```
