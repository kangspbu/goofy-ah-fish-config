function mw --wraps='udisksctl mount -b /dev/nvme0n1p5' --description 'alias mw=udisksctl mount -b /dev/nvme0n1p5'
  udisksctl mount -b /dev/nvme0n1p5 $argv
        
end
