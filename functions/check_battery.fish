function check_battery
    sudo cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode \
    | awk '{if($1==1){print "Battery Conservation: ON ✅"}else{print "Battery Conservation: OFF ⚡"}}'
end
