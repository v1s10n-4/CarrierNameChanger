THEOS_DEVICE_IP = 10.1.0.122
ARCHS = arm64e
TARGET = iphone:clang:12.1:12.1  
SDK = iPhoneOS12.1
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = CarrierNameChangerprefs
CarrierNameChangerprefs_FILES = CarrierNameChangerprefs.mm
CarrierNameChangerprefs_INSTALL_PATH = /Library/PreferenceBundles
CarrierNameChangerprefs_FRAMEWORKS = UIKit
CarrierNameChangerprefs_PRIVATE_FRAMEWORKS = Preferences
CarrierNameChangerprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CarrierNameChangerprefs.plist$(ECHO_END)
