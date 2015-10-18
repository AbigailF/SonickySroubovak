#!/usr/bin/env gnuplot
set datafile commentschars ";"

set terminal svg
set output "test.svg"
set multiplot layout 3,1

set ylabel "sample value"
set bmargin 0
set format x ""
set ytics -0.8,0.2
set key bottom

set xlabel "time (s)"
set bmargin
set tmargin 0
set format x "%g"
set format y "%g"
set ytics -1.0,0.2,0.8
set key top

set ylabel "popis y osy"
set xlabel "vstupni vlna"

plot [0.2:0.21] "test.dat"       using 1:3 with lines lc rgbcolor "#ff0000" #title "right channel"
set xlabel "velka rovna deska"
plot [0.2:0.22] "test3.dat"      using 1:3 with lines lc rgbcolor "#00ff00" #title "right channel"
set xlabel "velka rovna deska"
plot [0.1:0.99] "test3.dat"      using 1:3 with lines lc rgbcolor "#00ff00" #title "right channel"
  
unset multiplot