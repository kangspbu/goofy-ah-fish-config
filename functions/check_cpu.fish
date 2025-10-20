function check_cpu --wraps='sudo cpupower frequency-info | grep \'current policy\\|current CPU frequency\' | awk \'NR==1{print "Governor: " $4} NR==2{print "Frequency: " $4 " " $5}\''
    sudo cpupower frequency-info | grep 'current policy\|current CPU frequency' | awk '/governor/ {match($0, /"([^"]+)"/, a); print "Governor: " a[1]} /current CPU frequency/ {print "Frequency: " $4 " " $5}'
end
