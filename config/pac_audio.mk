#
# PAC-X-ROM Audio Files
#

#ALARM_PATH := vendor/pac/prebuilt/common/media/audio/alarms
#NOTIFICATION_PATH := vendor/pac/prebuilt/common/media/audio/notifications
#RINGTONE_PATH := vendor/pac/prebuilt/common/media/audio/ringtones

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=PAC-Ringtone.ogg \
    ro.config.notification_sound=PAC-Notifications.ogg \
    ro.config.alarm_alert=PAC-Alarm.ogg

# Alarms
PRODUCT_COPY_FILES += \
    $(ALARM_PATH)/PAC-Alarm.ogg:system/media/audio/alarms/PAC-Alarm.ogg

# Notifications
PRODUCT_COPY_FILES += \
    $(NOTIFICATION_PATH)/PAC-Notifications.ogg:system/media/audio/notifications/PAC-Notifications.ogg

#RingTone
PRODUCT_COPY_FILES += \
    $(RINGTONE_PATH)/PAC-Ringtone.ogg:system/media/audio/ringtones/PAC-Ringtone.ogg
   
