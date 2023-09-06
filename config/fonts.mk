$(call inherit-product-if-exists, external/google-fonts/arbutus-slab/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/arvo/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

PRODUCT_COPY_FILES += \
    vendor/2by2/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml \
    vendor/2by2/fonts/GoogleSans-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Italic.ttf \
    vendor/2by2/fonts/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Regular.ttf \
    vendor/2by2/fonts/Inter-VF.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-VF.ttf \
    vendor/2by2/fonts/AOTFShinGoProRegular.otf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AOTFShinGoProRegular.otf

PRODUCT_PACKAGES += \
    FontArbutusSourceOverlay \
    FontArvoLatoOverlay \
    FontGoogleSansOverlay \
    FontGoogleSansLatoOverlay \
    FontInterOverlay \
    FontShinGoOverlay \
    FontRubikRubikOverlay
