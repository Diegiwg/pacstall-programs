name="rhino-xfce4-mobile-config-git"
maintainer="Oren Klopfer <oren@taumoda.com>"
description="Rhino Linux XFCE4 Mobile configuration"
depends=("xfce4-whiskermenu-plugin" "yaru-theme-icon" "yaru-theme-gtk" "onboard" "xfce4-helpers" "xiccd")
optdepends=("xfce4: to use the configuration")
replace=("rhino-linux-xfce4-config-git" "unicorn-desktop" "unicorn-desktop-git" "unicorn-mobile" "unicorn-mobile-git")
url="https://github.com/oklopfer/dotfiles.git"
pkgver() {
  git ls-remote "${url}" main | cut -f1 | cut -c1-8 # Returns the latest commit hash from remote
}
version="$(pkgver)"

build() {
  sudo mkdir -p "${pkgdir}/usr/share/backgrounds"
  sudo mkdir -p "${pkgdir}/usr/share/doc"
  sudo mkdir -p "${pkgdir}/etc/skel/.config"
  sudo mkdir -p "${pkgdir}/usr/share/icons"
  sudo mkdir -p "${pkgdir}/usr/share/backgrounds/xfce"
  sudo mkdir -p "${pkgdir}/etc/skel/.local/share"
  # Is not a valid link
  sudo rm -f xfce4/desktop/icons.screen.latest.rc
}

install() {
  # Install doc
  sudo install -Dm644 "README.md" -t "${pkgdir}/usr/share/doc/${name}"
  # Install
  sudo cp -r xfce4 "${pkgdir}/etc/skel/.config"
  sudo cp -r onboard "${pkgdir}/etc/skel/.local/share"
  sudo cp -r rhino "${pkgdir}/usr/share/backgrounds/"
  sudo cp -r Dot-Transparent "${pkgdir}/usr/share/icons"
  sudo cp rhino/* "${pkgdir}/usr/share/backgrounds/xfce"
  sudo install -Dm644 "logo.png" -t "${pkgdir}/usr/share/icons"
  sudo install -Dm644 "logo.svg" -t "${pkgdir}/usr/share/icons"
}

postinst() {
  if ! [[ -d "${homedir}/.local/share" ]]; then
    mkdir -p "${homedir}/.local/share"
  fi
  cp -r "/etc/skel/.config/xfce4" "${homedir}/.config"
  cp -r "/etc/skel/.local/share/onboard" "${homedir}/.local/share"
}
