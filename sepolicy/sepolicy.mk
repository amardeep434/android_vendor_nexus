#
# This policy configuration will be used by all products that
# inherit from Pure Nexus
#

BOARD_SEPOLICY_DIRS += \
    vendor/nexus/sepolicy

BOARD_SEPOLICY_UNION += \
    file.te \
    file_contexts \
    genfs_contexts \
    property_contexts \
    seapp_contexts \
    installd.te \
    netd.te \
    property.te \
    shell.te \
    sysinit.te \
    system.te \
    ueventd.te \
    vold.te \
    mac_permissions.xml
