ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkfile ${HOME}/.hugin

# Stupid errors about being unable to update configuration file.
# I personally deal with this by running it once without a sandbox
# and setting my options then.

whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes
whitelist ${HOME}/.hugin
whitelist ${PICTURES}
whitelist ${DOWNLOADS}

private-bin PTBatcherGUI,calibrate_lens_gui,hugin,hugin_stitch_project,align_image_stack,autooptimiser,celeste_standalone,checkpto,cpclean,cpfind,deghosting_mask,fulla,geocpset,hugin_executor,hugin_hdrmerge,hugin_lensdb,icpfind,linefind,nona,pano_modify,pano_trafo,pto_gen,pto_lensstack,pto_mask,pto_merge,pto_move,pto_template,pto_var,tca_correct,verdandi,vig_optimize,enblend
private-etc fonts,alternatives
