function check_profile --wraps='sudo cat /sys/firmware/acpi/platform_profile | awk \'{print "Platform profile: " $1}\''
    sudo cat /sys/firmware/acpi/platform_profile | awk '{print "Platform profile: "$1}'
end
