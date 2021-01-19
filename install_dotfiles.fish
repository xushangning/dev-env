#!/bin/fish                                     

set DOTFILE_HOME dotfiles
for p in (find $DOTFILE_HOME)
    set dest (string replace $DOTFILE_HOME ~ $p)
    if test -d $p
        mkdir -p $dest
    else
        set src (realpath $p)
        ln -sf $src $dest
    end
end
