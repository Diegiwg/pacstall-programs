name="glow-deb"
gives="glow"
replace=("${gives}")
version="1.5.1"
arch=("amd64" "arch64")
case "${CARCH}" in
  amd64)
    url="https://github.com/charmbracelet/glow/releases/download/v${version}/glow_${version}_amd64.deb"
    hash="99e904f9a599f8a007817d49814b2440ff4d95bb5fb9b26763cfc5bf58c579e2"
    ;;
  arm64)
    url="https://github.com/charmbracelet/glow/releases/download/v${version}/glow_${version}_arm64.deb"
    hash="edb4cb7b4f9a531e85be0060109ca7c053d0d02761cc145482f72604f874fed9"
    ;;
  *) return 1 ;;
esac
description="Render markdown on the CLI, with pizzazz!"
repology=("project: glow")
# vim:set ft=sh ts=2 sw=2 et:
