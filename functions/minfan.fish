function minfan --wraps="echo 'balanced' | sudo tee /sys/firmware/acpi/platform_profile" --description "alias minfan=echo 'balanced' | sudo tee /sys/firmware/acpi/platform_profile"
  echo 'balanced' | sudo tee /sys/firmware/acpi/platform_profile $argv
        
end
