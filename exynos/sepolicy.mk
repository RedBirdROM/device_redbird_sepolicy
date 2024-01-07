#
# This policy configuration will be used by all exynos products
# that inherit from DerpFest
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/redbird/sepolicy/exynos/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/redbird/sepolicy/exynos/dynamic \
    device/redbird/sepolicy/exynos/system
else
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/redbird/sepolicy/exynos/dynamic \
    device/redbird/sepolicy/exynos/vendor
endif
