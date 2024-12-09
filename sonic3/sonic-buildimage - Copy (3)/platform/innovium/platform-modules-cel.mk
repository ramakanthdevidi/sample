# Celestica platform modules

CEL_PLATFORM_MODULE_VERSION = 0.2.2

export CEL_PLATFORM_MODULE_VERSION

CEL_MIDSTONE_200I_PLATFORM_MODULE = platform-modules-midstone-200i_$(CEL_PLATFORM_MODULE_VERSION)_$(CONFIGURED_ARCH).deb
$(CEL_MIDSTONE_200I_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-cel
$(CEL_MIDSTONE_200I_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(CEL_MIDSTONE_200I_PLATFORM_MODULE)_PLATFORM = x86_64-cel_midstone-r0
SONIC_DPKG_DEBS += $(CEL_MIDSTONE_200I_PLATFORM_MODULE)
