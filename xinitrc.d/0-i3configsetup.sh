#!/bin/sh

# i3 config composition
i3cfgdir=$HOME/.config/i3
cat $i3cfgdir/base > $i3cfgdir/config
if [ -d $i3cfgdir/local ] ; then
  for f in `ls $i3cfgdir/local` ; do
    cat $i3cfgdir/local/$f >> $i3cfgdir/config
  done
fi
