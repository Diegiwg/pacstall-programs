name="brave-browser-nightly-deb"
version="1.54.54"
gives="brave-browser-nightly"
breaks=("${gives}-bin" "${gives}-app" "${gives}-git")
replace=("${gives}")
pacdeps=("brave-keyring-deb")
url="https://github.com/brave/brave-browser/releases/download/v${version}/${gives}_${version}_amd64.deb"
homepage='https://brave.com/'
description="The Brave browser is a fast, private and secure web browser for PC, Mac and mobile - Nightly channel"
hash="f8b08145e7aa51fb63c87d5bcb7cdaa4de4e6dddfc3a1485bc03b7a80b9f412f"
arch=('amd64')
repology=("project: brave" "visiblename: brave-nightly")
maintainer="Henryws <hwengerstickel@pm.me>"
