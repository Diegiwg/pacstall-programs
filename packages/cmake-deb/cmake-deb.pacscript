name="cmake-deb"
gives="cmake"
version="3.25.1"
description="CMake data files (modules, templates and documentation)"
pacdeps=("cmake-data-deb")
codename="$(lsb_release -cs)"
case "${codename}" in
  "bullseye")
    url="http://ftp.debian.org/debian/pool/main/c/cmake/cmake_${version}-1~bpo11+1_amd64.deb"
    hash="5561f20944ef4d9d3ea496bc92dff5b1d5adea3cfee1fa302a7298bedeb03f9e"
    ;;
  *)
    url="http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_${version}-1ubuntu1_amd64.deb"
    hash="a8c139c0cf500e47a521930f9e0cf5a814fbed60145a29bb37e7f7ae03a27ca4"
    ;;
esac
arch=('amd64')
maintainer="Zahrun <Zahrun@github.com>"
repology=("project: ${gives}" "repo: debian_unstable")
