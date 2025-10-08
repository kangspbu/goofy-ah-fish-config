function umk --wraps='udisksctl mount -b /dev/nvme0n1p2' --wraps='udisksctl unmount -b /dev/nvme0n1p2' --description 'alias umk=udisksctl unmount -b /dev/nvme0n1p2'
  udisksctl unmount -b /dev/nvme0n1p2 $argv
        
end
