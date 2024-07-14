# mGBA Flatpak

Don't use this. 

Use [the existing one](https://flathub.org/apps/io.mgba.mGBA) and then lock it down with [Flatseal](https://flathub.org/apps/com.github.tchx84.Flatseal). 

```shell
$ flatpak install flathub io.mgba.mGBA
```

You can disable everything besides Wayland and PulseAudio, then enable GPU acceleration and input devices.
