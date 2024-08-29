set terminal pngcairo  dashed dashlength 0.3 size 900,900 enhanced font 'Helvetica,20'

#set title 'algo'
#set key title "lo que sea"
set ylabel "y"
set xlabel "x"
set key width 0.7 height 0.45
set key left top
set yrange[0:1000]
set output 'ejemplo.png'
plot 'test.dat' u 1:2  w lp


















