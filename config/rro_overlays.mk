# RRO Overlays
PRODUCT_PACKAGES += \
    NetworkStackOverlay \
    PixelLauncherCustomOverlay \
    PixelDocumentsUIGoogleOverlay \
    BuiltInPrintServiceOverlay \
    GooglePermissionControllerOverlay \
    PixelConfigOverlayCommon \
    TeleServiceOverlay \
    CaptivePortalLoginOverlay \
    GoogleWebViewOverlay \
    TelecomOverlay \
    CellBroadcastServiceOverlay \
    SettingsGoogleOverlay \
    SettingsGoogleOverlayPixel2022 \
    TelephonyProviderOverlay \
    ContactsProviderOverlay \
    PixelConfigOverlay2018 \
    SettingsProviderOverlay \
    TraceurOverlay \
    PixelConfigOverlay2019 \
    PixelConfigOverlay2019Midyear \
    PixelConfigOverlay2021 \
    PixelSetupWizardOverlay \
    PixelFwResOverlay \
    GoogleConfigOverlay \
    SystemUIGoogleOverlay \
    StorageManagerGoogleOverlay \
    FlipendoOverlay

# 2by2-side
PRODUCT_PACKAGES += \
    2by2FrameworksResOverlay \
#    2by2SystemUIResOverlay \
#    2by2SettingsResOverlay

# Packages
PRODUCT_PACKAGES += \
    DeskClock \
    Dialer \
    Contacts \
    Gallery2

# Custom Icons
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/2by2/overlay/themes/CustomIcons

# Use Matlog for userdebug and eng builds
ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES += MatLog
endif
