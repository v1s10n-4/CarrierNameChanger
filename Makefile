ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard
TARGET = iphone:clang:12.1:12.1
SDK = iPhoneOS12.1

THEOS_DEVICE_IP = 10.1.0.122

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CarrierNameChanger

CarrierNameChanger_FILES = Tweak.x
CarrierNameChanger_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += CarrierNameChangerprefs
include $(THEOS)/makefiles/aggregate.mk
