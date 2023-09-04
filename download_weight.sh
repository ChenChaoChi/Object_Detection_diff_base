#!bin/bash

export fileid=1p6Sj4I-Ic5wyx6TVgSef5DaOd1UvPz5_
export filename=best_ckpt.pt

## WGET ##
wget --save-cookies cookies.txt 'https://docs.google.com/uc?export=download&id='$fileid -O- \
     | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p' > confirm.txt

wget --load-cookies cookies.txt -O $filename \
     'https://docs.google.com/uc?export=download&id='$fileid'&confirm='$(<confirm.txt)
