<h1 align="center">Dotfiles</h1>

## System Requirements
- Arch
```bash
yay -S stow
```
- Fedora
```bash
sudo dnf install stow
```

## Usage
To set all dotfiles at once run
```bash
stow */
```

To set a single configuration
```bash
stow [subdirectoy]
```
