# firejail-profile
Tight Firejail profiles

This is a collection of tighter firejail (https://github.com/netblue30/firejail) profiles for certain applications. These may or may not work on your computer since some of them use seccomp filters, which may depend on architecture and OS. These were designed on Debian sid/experimental x86_64.

I have tentatively started enabling X11 jailing on some of these profiles. Because `xpra` servers take so long to start up, I end up starting the xpra servers separately (at login) and assign different ones for different things. For example, `:470` is for all of the jailed terminal emulators and `:480` is for mutt (and anything it spawns). I also created a jail script that simply tells `xpra` to initialize the given display number and run the given command — it's simple but handy for `xpra` servers I only need for a given program. If you use different `xpra` display numbers or don't use X11 jailing at all, simply modify or comment the `env` command in `x-terminal-emulator.profile` and `mutt.profile`.

List of currently-supported programs:
* Ardour 5
* Akregator
* aMule
* Blender
* Brackets
* Calligra
* Cinelerra
* Darktable
* Dia
* Fetchmail
* Firefox
* Flowblade
* FreeCAD
* GIMP
* Google Chrome
* Google Earth
* Hugin
* ImageJ
* Inkscape
* Kdenlive
* Libreoffice
* Linphone
* LMMS
* Luminance HDR
* Macrofusion
* Messenger For Desktop
* MPD
* MuPDF
* Mutt
* Natron (thanks @triceratops1!)
* OpenShot
* Pidgin
* QPDFView
* Ricochet
* Scribus
* Shotcut
* Signal Desktop
* Skype
* Slack Desktop
* Synfig Studio
* Telegram Desktop
* Tor (experimental!)
* Tor Browser Bundle (through the torbrowser-launcher package on Debian)
* Tor Browser profile for Arch (thanks @robotanarchy!)
* Viber
* Viewnior
* Virtualbox
* WhatsApp Web (application generated with https://github.com/jiahaog/nativefier)
* Generic terminal emulator (the profile is called x-terminal-emulator because of the /etc/alternatives system in Debian)
* Youtube-dl
* Zart (thanks @triceratops1!)