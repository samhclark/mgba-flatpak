# just manual: https://github.com/casey/just/#readme

app-id := "com.samhclark.io.mgba.mgba"
build-dir := "builddir"

_default:
    @just --list

# Builds the flatpak 
build:
	flatpak-builder --force-clean --user --install-deps-from=flathub {{build-dir}} {{app-id}}.yml

check: check-desktop check-metainfo

check-desktop:
    desktop-file-validate {{app-id}}.desktop

check-metainfo:
    appstreamcli validate --pedantic --strict --explain {{app-id}}.metainfo.xml

install:
    flatpak-builder --force-clean --user --install {{build-dir}} {{app-id}}.yml

update-lua:
    git submodule update --remote --merge