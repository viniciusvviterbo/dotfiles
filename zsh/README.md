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

- Fedora

Yet to be configured