<h1 align="center">Neovim</h1>

## System Requirements
- Arch
```bash
yay -S neovim make automake gcc gcc-c++ kernel-devel ripgrep lazygit \
&& \
sudo npm i -g pyright typescript typescript-language-server
```

- Fedora
```bash
sudo dnf copr enable atim/lazygit -y
sudo install neovim make automake gcc gcc-c++ kernel-devel ripgrep lazygit \
&& \
sudo npm i -g pyright typescript typescript-language-server

```

## Plugin Installation
```
:PackerSync
```

or press

```
<Space>ps
```
