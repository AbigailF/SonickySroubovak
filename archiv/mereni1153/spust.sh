echo vloz desku
read k
./poslani_zvuku.sh
cp test2.dat test3.dat

echo vloz kokavni desku
read k
./poslani_zvuku.sh
cp test2.dat test4.dat

echo vloz konvexni desku
read k
./poslani_zvuku.sh
cp test2.dat test5.dat

echo vloz malou kovovou desku
read k
./poslani_zvuku.sh
cp test2.dat test6.dat

./udelani_grafu.sh