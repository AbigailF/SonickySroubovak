#!/usr/bin/env gnuplot
set datafile commentschars ";"

set terminal svg
set output "test.svg"

set multiplot layout 5,1

set ylabel "sample value"
set bmargin 0
set format x ""
set ytics -0.8,0.2
set key bottom
#plot [0.2:1] "test.dat" using 1:2 every 1000 with lines lc rgbcolor "#a0a0b0" #title "left channel"

set xlabel "time (s)"
set bmargin
set tmargin 0
set format x "%g"
set format y "%g"
set ytics -1.0,0.2,0.8
set key top

set ylabel "popis y osy"
set xlabel "zaznam1"

plot [1:2] "test1.dat"       using 1:3 with lines lc rgbcolor "#ff0000" #title "right channel"
set xlabel "zaznam2"
plot [1:2] "test2.dat"      using 1:3 with lines lc rgbcolor "#00ff00" #title "right channel"
set xlabel "zaznam3"
plot [1:2] "test3.dat"       using 1:3 with lines lc rgbcolor "#0000ff" #title "right channel"
set xlabel "vysi_roz"
plot [1.4:1.6] "test3.dat"      using 1:3 with lines lc rgbcolor "#00000f" #title "right channel"
set xlabel "vysi_roz"
plot [1.4:1.6] "test3.dat"      using 1:3 with lines lc rgbcolor "#ff000" #title "right channel"
unset multiplot