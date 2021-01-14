#
# Makefile for the STMicroelectronics device drivers.
#
#CC=clang
ifeq ($(CC),clang)
KBUILD_CFLAGS += --target=aarch64-linux-gnu --prefix=/opt/toolchains/gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
KBUILD_CFLAGS += -Wno-unknown-warning-option
#KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
KBUILD_CFLAGS += -Wno-address-of-packed-member
#KBUILD_CFLAGS += -Qunused-arguments
#KBUILD_CFLAGS += -no-integrated-as
#KBUILD_CFLAGS += -Wno-format-invalid-specifier
#KBUILD_CFLAGS += -Wno-gnu
#KBUILD_CFLAGS += -Wno-tautological-compare
#KBUILD_CFLAGS += -mno-implicit-float
#KBUILD_CFLAGS += -Wno-asm-operand-widths
#KBUILD_CFLAGS += -Wno-stringop-truncation
#KBUILD_CFLAGS += -Wno-zero-length-bounds
#KBUILD_CFLAGS += -Wno-stringop-overflow
#KBUILD_CFLAGS += -Wno-restrict
#KBUILD_CFLAGS += -Wno-packed-no-aligned
#KBUILD_CFLAGS += -Wno-initializer-overrides
#KBUILD_CFLAGS += -Wno-unused-value
#KBUILD_CFLAGS += -Wno-format
#KBUILD_CFLAGS += -Wno-sign-compare -Wno-format-zero-length -Wno-uninitialized -Wno-pointer-to-enum-cast
#KBUILD_CFLAGS += -mno-global-merge
#KBUILD_CFLAGS += -fcatch-undefined-behavior
KBUILD_CFLAGS += -Wno-gnu-variable-sized-type-not-at-end
endif

#KBUILD_CFLAGS += -DCONFIG_AMLOGIC_ETH_PRIVE -DCONFIG_PM_SLEEP -DCONFIG_OF
obj-$(CONFIG_STMMAC_ETH) += stmmac/
