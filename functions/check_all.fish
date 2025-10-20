function check_all --wraps='check_battery; check_profile; check_cpu'
    check_battery
    check_profile
    check_cpu
end
