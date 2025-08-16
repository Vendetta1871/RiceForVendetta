
pkgname=vendetta-rice
pkgver=1.0
pkgrel=1
pkgdesc="Hyprland gruvbox themed rice from Vendetta1871"
arch=('any')
url="https://example.com"
license=('MIT')

depends=(
	# pacman depencies
	'hyprland'  				# dynamic tiling Wayland compositor
	'wayland'  					# Wayland display server protocol
	'wayland-protocols'  		# additional protocols for Wayland
	'xorg-xwayland'  			# runs X11 applications under Wayland
	'kitty'  					# GPU-accelerated terminal emulator
	'bash'  					# popular command-line shell
	'zsh'  						# popular command-line shell with advanced features
	'bluez'  					# Bluetooth protocol stack
	'bluez-utils'  				# utilities for managing Bluetooth devices
	'pulseaudio'  				# sound server for Linux
	'waybar'  					# status bar for Wayland compositors
	'gsimplecal'  				# simple GUI calendar
	'brightnessctl'  			# control screen backlight brightness
	'grim'  					# screenshot utility for Wayland
	'slurp'  					# select region of the screen for Wayland
	'wl-clipboard'  			# clipboard utilities for Wayland
	'starship'  				# customizable prompt for shells
	'fastfetch'  				# fast system information tool
	'btop'  					# resource monitor with a graphical interface
	'pavucontrol'  				# GUI for managing PulseAudio
	'cava'  					# terminal audio visualizer
	'python-dbus'  				# Python bindings for D-Bus
	'playerctl'  				# control media players via command line
	'blueman'  					# GUI for managing Bluetooth devices
	'dunst'  					# lightweight notification daemon
	'hyprpaper'  				# wallpaper management for Hyprland
	'zsh-autosuggestions'  		# command suggestions for zsh
	'zsh-syntax-highlighting' 	# syntax highlighting for zsh
	'fcitx5'  					# input method framework
	'fcitx5-chinese-addons'  	# additional Chinese input methods for fcitx5
	'fcitx5-configtool'  		# GUI configuration tool for fcitx5
	'fcitx5-gtk'  				# GTK integration for fcitx5
	'fcitx5-qt'  				# Qt integration for fcitx5
	'fcitx5-nord'  				# Nord theme for fcitx5
	'noto-fonts-cjk'  			# CJK fonts from Noto
	'wqy-zenhei'  				# Chinese font for Linux
	'xfce-polkit'  				# GUI authentication agent for PolicyKit
	# AUR depencies
	'rofi-wayland'  			# Rofi launcher for Wayland
	'rofi-power-menu'  			# Power menu script for Rofi
	'xfce-polkit'  				# GUI authentication agent for PolicyKit
	'ttf-jetbrains-mono-nerd'  	# JetBrains Mono font patched with Nerd Fonts icons
	'ttf-sarasa-gothic'  		# Sarasa Gothic font (CJK support)
	'gruvbox-dark-gtk'  		# Gruvbox dark GTK theme
	'papirus-icon-theme'  		# Papirus icon theme for Linux
)    

makedepends=('yay')
source=("vendetta-rice-backup.sh" "vendetta-rice-install.sh" "dotfiles")
sha256sums=('SKIP' 'SKIP' 'SKIP')

package() {
  # move scripts to /usr/bin
  install -Dm755 "$srcdir/vendetta-rice-backup.sh" "$pkgdir/usr/bin/vendetta-rice"
  install -Dm755 "$srcdir/vendetta-rice-install.sh" "$pkgdir/usr/bin/vendetta-rice"

  # move additional files to /usr/share/vendetta-rice/
  SRC_DIR="$srcdir/dotfiles"
  DEST_DIR="$pkgdir/usr/share/vendetta-rice/dotfiles"
  mkdir -p "$DEST_DIR"
  cp -a "$SRC_DIR/." "$DEST_DIR/"

  find "$DEST_DIR" -type f -exec sh -c 'head -n1 "$1" 2>/dev/null | grep -q "^#!" && chmod +x "$1"' _ {} \;
}
