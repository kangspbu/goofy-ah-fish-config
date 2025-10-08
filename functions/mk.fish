function mk --wraps='udisksctl mount -b /dev/nvme0n1p2' --description 'alias mk=udisksctl mount -b /dev/nvme0n1p2'
  udisksctl mount -b /dev/nvme0n1p2 $argv
        
end
