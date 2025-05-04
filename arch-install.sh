# Install any packages we're interested in
sudo pacman -S ghostty \
    stow \
    zoxide \
    fzf \
    bat \
    tree \
    git \
    base-devel \
    nerd-fonts \
    nodejs \
    npm \
    go \
    rust

# Install starship (love)
sudo curl -sS https://starship.rs/install.sh | sh

# Install yay so we can ultimately install VSCode
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install VSCodium (community drive, has no telemetry (fuck Microsoft))
yay -S vscodium-bin
