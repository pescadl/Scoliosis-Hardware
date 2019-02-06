#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source;C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/kernel/tirtos/packages
override XDCROOT = C:/ti/xdctools_3_51_01_18_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/source;C:/ti/simplelink_cc2640r2_sdk_2_40_00_32/kernel/tirtos/packages;C:/ti/xdctools_3_51_01_18_core/packages;..
HOSTOS = Windows
endif
