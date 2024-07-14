# just manual: https://github.com/casey/just/#readme

_default:
    @just --list

# Builds the flatpak 
build:
	flatpak-builder --force-clean --user --install-deps-from=flathub builddir com.samhclark.io.mgba.mgba.yml

check:
    appstreamcli validate --pedantic --strict --explain com.samhclark.io.mgba.mgba.metainfo.xml

install:
    flatpak-builder --install builddir com.samhclark.io.mgba.mgba.yml