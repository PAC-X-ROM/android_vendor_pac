for device in $(python vendor/pac/tools/get_official_devices.py)
do
for var in eng user userdebug; do
add_lunch_combo pac_$device-$var
done
done
