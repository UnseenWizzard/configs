#!/bin/sh
# Uses https://github.com/PandorasFox/i3lock-color 

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#073642'  # default
T='#fdf6e3'  # text
W='#dc322f'  # wrong
V='#b58900'  # verifying

i3lock \
-i ~/Pictures/wallpapers/urban_blur.jpg \
--bar-indicator \
--bar-position h \
--bar-direction 1 \
--bar-max-height 50 \
--bar-base-width 50 \
--bar-color 002b36cc \
--keyhlcolor 586e75cc \
--bar-periodic-step 50 \
--bar-step 50 \
--bar-width 250 \
--redraw-thread \
\
--clock \
--force-clock \
--timepos 5:h-80 \
--timecolor fdf6e3ff \
--datepos tx:ty+15 \
--datecolor 93a1a1ff \
--date-align 1 \
--time-align 1 \
--ringvercolor 07364288 \
--ringwrongcolor dc322f88 \
--statuspos 5:h-16 \
--verif-align 1 \
--wrong-align 1 \
--verifcolor ffffffff \
--wrongcolor ffffffff \
--modifpos -50:-50
