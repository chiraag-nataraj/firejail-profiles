include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/GIMP

whitelist ${HOME}/.config/GIMP
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${HOME}/.fonts

whitelist ${DOWNLOADS}
whitelist ${PICTURES}

private-bin gimp,gimp-2.10,gimp-console,gimp-console-2.10,python2.7
private-etc gimp,fonts,alternatives
private-lib babl-0.1,gegl-0.4,libjson-glib-1.0.so.0,libwebp.so.6,libavformat.so.57,libavformat.so.58,libumfpack.so.5,libSDL-1.2.so.0,libraw.so.19,libIlmImf-2_2.so.23,libavformat.so.57,libswscale.so.4,libswscale.so.5,libgegl-sc-0.4.so,libgudev-1.0.so.0,libgimp-2.0.so.0,libgimpui-2.0.so.0
