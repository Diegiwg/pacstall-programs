name="upscayl-app"
pkgname="upscayl"
gives="upscayl"
version="2.5.1"
description="Free and Open Source AI Image Upscaler for Linux, MacOS and Windows"
maintainer="0x262D <pacstall@copypaste.anonaddy.me>"
url="https://github.com/TGS963/${gives}/releases/download/v${version}/Upscayl-${version}-linux.AppImage"
hash="98032aec8ee81fd04125e2d44f8986c6587bbcf34fc1ae897905079c6a0281d7"
breaks=("${pkgname}" "${pkgname}-deb" "${pkgname}-bin" "${pkgname}-git")
repology=("project: ${pkgname}")

install() {
  # Install appimage
  sudo install -Dm755 "Upscayl-${version}-linux.AppImage" "${pkgdir}/usr/bin/${pkgname}"

  # Download icon
  wget -O "${pkgname}.png" -q "https://raw.githubusercontent.com/TGS963/${gives}/main/main/build/icon.png"
  sudo install -Dm644 "${pkgname}.png" "${pkgdir}/usr/share/pixmaps/${pkgname}.png"

  # Install .desktop file
  wget -q "https://raw.githubusercontent.com/pacstall/pacstall-programs/master/packages/${name}/${pkgname}.desktop"
  sudo install -Dm644 "${pkgname}.desktop" "${pkgdir}/usr/share/applications/${pkgname}.desktop"
}
# vim:set ft=sh ts=2 sw=2 et:
