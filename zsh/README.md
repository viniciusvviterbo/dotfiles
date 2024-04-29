<h1 align="center">ZSH</h1>

## System Requirements
- Arch
```bash
yay -S zsh nerd-fonts
```

Install the ZSH theme [powerlevel10k](https://github.com/romkatv/powerlevel10k)

```bash
yay -S  zsh-theme-powerlevel10k-git \
&& \
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

Either run `p10k configure`, or load the config files in this subdirectory

Change default shell
```bash
chsh -s /usr/bin/zsh
```

- Fedora
Yet to be configured


- GNOME
If using the GNOME Terminal, set `Preferences > Profiles > [profile-name] > Command > Custom command` to `/usr/bin/zsh`, so it always starts the application as ZSH
