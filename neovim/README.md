<h1 align="center">Neovim</h1>

## System Requirements
- Fedora
```bash
sudo dnf install neovim \
    make automake gcc gcc-c++ kernel-devel \ # Add-ons installation
    ripgrep # Telescope

npm i -g \
	pyright \ # Python LSP dependency
	typescript typescript-language-server # JS and TS LSP dependency

```

## Plugin Installation
```
:PackerSync
```

or press

```
<Space>ps
```
