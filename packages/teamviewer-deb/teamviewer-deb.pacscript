name="teamviewer-deb"
pkgname="teamviewer"
gives="teamviewer"
version="15.41.10"
repology=("project: teamviewer")
replace=("${gives}")
breaks=("${gives}" "${gives}-bin" "${gives}-git" "${gives}-app" "${gives}-deb")
depends=("libqt5x11extras5" "libqt5quickcontrols2-5" "libqt5webengine5" "libqt5svg5" "hicolor-icon-theme")
url="https://download.teamviewer.com/download/linux/teamviewer_amd64.deb"
description="Application for remote desktop sharing and online meetings"
license="custom"
hash="15e305303fda551401b9227b8718c3673ca1720f9cf799e25970e0e640f60969"
arch=('amd64')
maintainer="heyzsh <haidarzsh@gmail.com>"
