name="firefox-developer-edition-bin"
maintainer="Paul Cosma (saenai255) <paul.cosma97@gmail.com>"
pkgname="firefox-developer-edition"
version="114.0b5"
description="The browser made for developers. All the latest developer tools in beta, plus experimental features like the Multi-line Console Editor and WebSocket Inspector."
url="https://download-installer.cdn.mozilla.net/pub/devedition/releases/${version}/linux-x86_64/en-US/firefox-${version}.tar.bz2"
homepage='https://www.mozilla.org/en-US/firefox/developer/'
breaks=("${pkgname}" "${pkgname}-git" "${pkgname}-deb" "${pkgname}-app")
hash="9b80faf493d2bfaedca9ce7814499d40fb1b15948cfac368064dc7656476c9a8"
arch=('amd64')
repology=("project: firefox" "visiblename: firefox-developer-edition")
__icon_url="https://www.mozilla.org/media/img/structured-data/logo-firefox-developer.8aedc8028e4d.png"

install() {
  cd ..
  # Make dirs and assign permissions
  sudo mkdir -p "${pkgdir}/opt/firefox-developer-edition"
  sudo cp -r firefox/* "${pkgdir}/opt/firefox-developer-edition"

  # Install the icon for the desktop file
  wget -q -O "${pkgname}.png" "${__icon_url}"
  sudo install -Dm644 "${pkgname}.png" "${pkgdir}/usr/share/pixmaps/${pkgname}.png"

  # Install the desktop file
  wget -q "https://raw.githubusercontent.com/pacstall/pacstall-programs/master/packages/${name}/${pkgname}.desktop"
  sudo install -Dm644 "${pkgname}.desktop" "${pkgdir}/usr/share/applications/${pkgname}.desktop"
}
