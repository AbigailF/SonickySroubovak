#aplay -Dhw:sndrpiwsp -r 44100 -c 2 -f S16_LE $1 &
#aplay -Dhw:sndrpiwsp -r 44100 -c 2 -f S16_LE $1 &
aplay -Dhw:sndrpiwsp -r 44100 -c 2 -f S16_LE ../440-cd3.wav& 
#arecord -d $1 -Dhw:sndrpiwsp -r 44100 -c 2 -f S16_LE out.wav 
arecord -d 1 -Dhw:sndrpiwsp -r 44100 -c 2 -f S16_LE out.wav 

sox   ../440-cd3.wav test.dat
sox  out.wav test2.dat



 
