function maxfan --wraps="echo 'performance' | sudo tee /sys/firmware/acpi/platform_profile" --description "alias maxfan=echo 'performance' | sudo tee /sys/firmware/acpi/platform_profile"
  echo 'performance' | sudo tee /sys/firmware/acpi/platform_profile $argv
        
end
