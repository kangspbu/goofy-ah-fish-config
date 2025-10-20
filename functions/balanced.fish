function balanced
    echo 1 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode > /dev/null
    echo balanced | sudo tee /sys/firmware/acpi/platform_profile > /dev/null
    sudo cpupower frequency-set -g powersave
    sudo bash -c 'echo 128 > /sys/devices/system/cpu/cpu0/cpufreq/amd_pstate/perf_bias'
    echo 'Balanced mode ✅'
end
