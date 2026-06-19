# dotfiles

My personal dotfiles, tracked with a **bare git repository** whose work-tree is `$HOME`.
No symlinks — the real config files are version-controlled in place.

Tracked configs include Hyprland, Waybar, and Neovim (`~/.config/{hypr,waybar,nvim}`).

## Setup on a new machine

```bash
git clone --bare git@github.com:tom-lmn/dotfiles.git $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
dotfiles checkout      # add -f to overwrite existing files; back them up first
```

Add the alias to your shell rc so it persists:

```bash
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

## Daily use

```bash
dotfiles status            # show changes to tracked files
dotfiles diff              # review them
dotfiles add -u            # stage changes to ALREADY-tracked files only
dotfiles add ~/.config/foo # start tracking a NEW file (always name it explicitly)
dotfiles commit -m "..."
dotfiles push
```

> Never run `dotfiles add .` or `dotfiles add -A` — the work-tree is your whole
> home directory, so that would try to stage everything. Use `add -u` for existing
> files and an explicit path for new ones.

To browse untracked files worth adding (without changing the saved setting):

```bash
dotfiles -c status.showUntrackedFiles=normal status
```
