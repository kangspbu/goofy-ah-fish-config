function battery_conv
    set current (sudo cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode)
    if test $current -eq 1
        # Turn OFF
        echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode > /dev/null
        echo "Battery Conservation: OFF ⚡"
    else
        # Turn ON
        echo 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode > /dev/null
        echo "Battery Conservation: ON ✅"
    end
end
