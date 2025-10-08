function wfc
    if test (count $argv) -eq 0
        echo "Usage: wifi_connect <SSID>"
        return 1
    end
    set SSID $argv[1]
    sudo iwctl station wlan0 connect "$SSID"
end
