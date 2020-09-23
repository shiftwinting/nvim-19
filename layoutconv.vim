function! Convert()
    :s/\[/å/g
    :s/'/ä/g
    :s/;/ö/g
endfunction

command Layoutconvert call Convert()
