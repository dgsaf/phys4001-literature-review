set terminal epslatex input color solid
set output 'SDCS.tex'

set size 1.0, 2.0
set origin 0.0, 0.0

set multiplot

# set ylabel ' '
# set xlabel ' '
set format x ' '

set xlabel 'secondary electron energy $e_{q_{\alpha}}$ (Ry)'
set ylabel 'cross section ($\pi a_0^2$/Ry)'

set xr [0:2]
set mxtics 10
set yr [0:0.008]
set ytics 0,0.002,0.008
set mytics 4

# set pointsize 0.6

set format y "%5.3f"
set key \
  title 'triplet' \
  top right \
  box opaque \
  samplen 1 spacing 1.0 width -7.25 Right reverse
  # spacing 0.6 height +0.6

set size 1.0, 1.0
set origin 0.0, 0.0

p 'S.10' u 1:($3/pi/sqrt($1)/2) t '{\scriptsize CCC(10)}' \
    w p lc 0 pt 9,\
  'S.20' u 1:($3/pi/sqrt($1)/2) t '{\scriptsize CCC(20)}' \
    w p lc 0 pt 11,\
  'S.30' u 1:($3/pi/sqrt($1)/2) t '{\scriptsize CCC(30)}' \
    w p lc 0 pt 13,\
  'S.40' u 1:($3/pi/sqrt($1)/2) t '{\scriptsize CCC(40)}' \
    w p lc 0 pt 3,\
  'S.50' u 1:($3/pi/sqrt($1)/2) t '{\scriptsize CCC(50)}' \
    w p lc 0 pt 7

# pause -1 "press return to continue"

set size 1.0, 1.0
set origin 0.0, 1.0

set xlabel 'secondary electron energy $e_{q_{\alpha}}$ (Ry)'
set ylabel 'cross section ($\pi a_0^2$/Ry)'

set yr [0.0:0.029]
set ytics 0,0.005, 0.029

set format x
set key title 'singlet'
set mytics 5

#set nokey
#set multiplot
f(x) = (x < 1) ? 0.01*(x-1)**2 + 0.0167 : 0

set samples 2000

p 'S.10' u 1:($2/pi/sqrt($1)/2) t '{\scriptsize CCC(10)}' \
    w lp lc 0 lt 9,\
'S.20' u 1:($2/pi/sqrt($1)/2) t '{\scriptsize CCC(20)}' \
    w lp lc 0 lt 11,\
'S.30' u 1:($2/pi/sqrt($1)/2) t '{\scriptsize CCC(30)}' \
    w lp lc 0 lt 13,\
'S.40' u 1:($2/pi/sqrt($1)/2) t '{\scriptsize CCC(40)}' \
    w lp lc 0 lt 5,\
'S.50' u 1:($2/pi/sqrt($1)/2) t '{\scriptsize CCC(50)}' \
    w lp lc 0 lt 7,\
f(x) t '{\scriptsize CCC($\infty$)}' w l lc 0

# pause -1 "press return to continue"
