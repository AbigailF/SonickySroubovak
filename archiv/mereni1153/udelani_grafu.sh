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
set xlabel "vstupni vlna"

plot [0.48:0.489] "test.dat"       using 1:3 with lines lc rgbcolor "#ff0000" #title "right channel"
set xlabel "velka rovna deska"
plot [0.48:0.489] "test3.dat"      using 1:3 with lines lc rgbcolor "#00ff00" #title "right channel"
set xlabel "konkavni"
plot [0.48:0.489] "test4.dat"      using 1:3 with lines lc rgbcolor "#0000ff" #title "right channel"
set xlabel "konvexni"
plot [0.48:0.489] "test5.dat"      using 1:3 with lines lc rgbcolor "#ff0ff0" #title "right channel"
set xlabel "mala rovna deska"
plot [0.48:0.489] "test6.dat"      using 1:3 with lines lc rgbcolor "#0f0f0f" #title "right channel"


unset multiplot