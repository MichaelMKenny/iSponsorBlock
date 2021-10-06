ARCHS = arm64
TARGET = iphone:clang:latest:13.0
INSTALL_TARGET_PROCESSES = YouTube

CXXFLAGS="-Wno-error"
CFLAGS="-Wno-error"


include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = com.galacticdev.isponsorblock

$(BUNDLE_NAME)_INSTALL_PATH = /var/mobile/Library/Application Support

TWEAK_NAME = iSponsorBlock

iSponsorBlock_FILES = iSponsorBlock.xm $(wildcard *.m)
iSponsorBlock_FRAMEWORKS = UIKit CoreGraphics CoreMedia QuartzCore
iSponsorBlock_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

include $(THEOS)/makefiles/bundle.mk
include $(THEOS_MAKE_PATH)/tweak.mk
