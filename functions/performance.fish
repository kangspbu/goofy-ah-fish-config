function performance
    echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode > /dev/null
    echo performance | sudo tee /sys/firmware/acpi/platform_profile > /dev/null
    sudo cpupower frequency-set -g performance
    sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu0/cpufreq/amd_pstate/perf_bias'
    echo 'Performance mode ✅'
end
