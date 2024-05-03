<h1 align="center">ZSH</h1>

## System Requirements
- Arch
```bash
yay -S tmux nerd-fonts
```

Install the [catppuccin](https://github.com/catppuccin/tmux) plugin and add run configurations (if needed)
```bash
git clone https://github.com/catppuccin/tmux ~/.config/tmux/plugins/catppuccin \
&&
echo "run ~/.config/tmux/plugins/catppuccin/catppuccin.tmux" >> ~/.tmux.conf
```

- Fedora
Yet to be configured


- GNOME
If using the GNOME Terminal, set `Preferences > Profiles > [profile-name] > Command > Custom command` to `/usr/bin/tmux`, so it always starts the application as a T-mux session
