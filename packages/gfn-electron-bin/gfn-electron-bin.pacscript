name="gfn-electron-bin"
pkgname="geforcenow-electron"
version="1.11.0"
description="Linux desktop client for GeForce NOW, using Electron"
repology=("project: geforcenow-electron")
url="https://github.com/hmlendea/gfn-electron/releases/download/v${version}/geforcenow-electron_${version}_linux.zip"
hash="67a4b86a2213f96a7359ff8702d759c1de5d9fb36267ee0d5e57647ac9e44a97"
maintainer="Marie Piontek <marie@kaifa.ch>"
gives="${pkgname}"
breaks=("${pkgname}" "${pkgname}-deb" "${pkgname}-app" "${pkgname}-git")
depends=("libva2" "libva-glx2" "libva-drm2" "libva-wayland2" "libva-x11-2")

install() {
  # Get icon from github and install it
  wget -q "https://raw.githubusercontent.com/hmlendea/geforcenow-electron/master/icon.png"
  sudo install -Dm644 icon.png "${pkgdir}/usr/share/pixmaps/nvidia.png"

  # Install desktop file
  sudo install -Dm644 "${SRCDIR}/com.github.hmlendea.${pkgname}.desktop" -t "${pkgdir}/usr/share/applications"

  # Install the rest of the app
  sudo install -d "${pkgdir}/opt/${pkgname}/" "${pkgdir}/usr/bin"

  sudo cp -r "${SRCDIR}"/* "${pkgdir}"/opt/"${pkgname}"/
  sudo chmod +x "${pkgdir}/opt/${pkgname}/geforcenow-electron"
}

postinst() {
  sudo ln -s -r "/opt/${pkgname}/geforcenow-electron" "/usr/bin/geforcenow"
}

removescript() {
  sudo rm -f "/usr/bin/geforcenow"
}
