function cpuwatch --wraps="sudo cpupower frequency-set -d 400MHz; echo 'Governor aktif:'; cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor; echo; echo 'Monitoring frekuensi CPU (CTRL+C untuk keluar)...'; watch -n 1 \"grep 'MHz' /proc/cpuinfo | head -n 12\"" --description "alias cpuwatch=sudo cpupower frequency-set -d 400MHz; echo 'Governor aktif:'; cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor; echo; echo 'Monitoring frekuensi CPU (CTRL+C untuk keluar)...'; watch -n 1 \"grep 'MHz' /proc/cpuinfo | head -n 12\""
  sudo cpupower frequency-set -d 400MHz; echo 'Governor aktif:'; cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor; echo; echo 'Monitoring frekuensi CPU (CTRL+C untuk keluar)...'; watch -n 1 "grep 'MHz' /proc/cpuinfo | head -n 12" $argv
        
end
