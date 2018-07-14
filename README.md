# firejail-profiles
Tight Firejail profiles

This is a collection of tighter firejail (https://github.com/netblue30/firejail) profiles for certain applications. These may or may not work on your computer since some of them use seccomp filters, which may depend on architecture and OS. These were designed on Debian sid/experimental x86_64.

I am slowly switching the profiles to use a `common.inc` file so that maintenance becomes easier and I cut down on duplicate stuff.

I have tentatively started enabling X11 jailing on some of these profiles. Because `xpra` servers take so long to start up, I end up starting the xpra servers separately (at login) and assign different ones for different things. For example, `:470` is for all of the jailed terminal emulators and `:480` is for mutt (and anything it spawns). I also created a jail script that simply tells `xpra` to initialize the given display number and run the given command — it's simple but handy for `xpra` servers I only need for a given program. If you use different `xpra` display numbers or don't use X11 jailing at all, simply modify or comment the `env` command in `x-terminal-emulator.profile` and `mutt.profile`.

## Utilities

Currently there is one utility file in this repository: `gen_libraries`. `gen_libraries` is a collection of `bash` functions which helps dynamically resolve the libraries needed by a program in a more powerful way than the built-in one shipped with `firejail`. Most pertinently, it allows passing a folder as the first argument, in which case it will use `find` to locate all files within the folder and run `ldd` on each of them. This makes it easier, say, to compile a list for `firefox`.

An example script, `firefox.common`, which makes use of `gen_libraries` is provided in this repository as well. It has the following features:

* It can simply load a profile (pass the path to the profile as the first argument and `0` as the second and third arguments).
* It can create a temporary profile which is completely empty (pass the path to any profile as the first argument, `1` as the second argument, and `0` as the third argument).
* It can create a temporary profile and copy over files from another profile (pass the path to the profile which you wish to copy files from as the first argument and `1` as the second and third arguments). You can edit the list of files and folders to be copied over by editing the `$TOCOPY` variable.

## Profiles

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
