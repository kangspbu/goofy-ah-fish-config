function umw --wraps='udisksctl unmount -b /dev/nvme0n1p5' --description 'alias umw=udisksctl unmount -b /dev/nvme0n1p5'
  udisksctl unmount -b /dev/nvme0n1p5 $argv
        
end
