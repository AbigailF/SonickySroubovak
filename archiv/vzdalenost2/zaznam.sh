#aplay -Dhw:sndrpiwsp -r 44100 -c 2 -f S16_LE ../440-cd3.wav& 
#prijmuti zvuku na 1 sekundu
arecord -d 2 -Dhw:sndrpiwsp -r 44100 -c 2 -f S16_LE out.wav 
#prevod na datovy soubor
sox  out.wav test.dat



 
