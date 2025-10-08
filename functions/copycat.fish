function copycat --wraps='cat  | xsel --clipboard --input' --wraps='xsel --clipboard --input <' --description 'alias copycat=xsel --clipboard --input <'
  xsel --clipboard --input < $argv
        
end
