function wfs --wraps='sudo iwctl station wlan0 get-networks' --description 'alias wfs=sudo iwctl station wlan0 get-networks'
  sudo iwctl station wlan0 get-networks $argv
        
end
