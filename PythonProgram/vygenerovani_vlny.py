#!/usr/bin/python
import os
from zjisteni_rozsahu import zjisteni_rozsahu

i=0
#s=[1000,4000,6000,4456,4556,45566,4888]
s=[]
def vygeneruj_vlnu(s):    
    i=0
    while i<11:
        #(s)[l]
        #spust tohle, vygeneruj vlnu
        #pripravi prikaz
        u="sox -n -c 2 -r  44100 -b 16  data/vlna{0}.wav synth 0.5 sin {1}  gain -3".format(i,s[i])
        print (u)
        os.system (u)
        u="sox  data/vlna{0}.wav data/vlna{0}.dat".format(i)
        print (u)
        os.system (u)
        #os.system ("sox -n -c 2 -r    l -b 16  vlna.wav synth 0.5 sin 11533  gain -3")
        i=i+1
        
s=zjisteni_rozsahu(s)
#s=[]        
#sout=zjisteni_rozsahu(s)
#print (sout)
vygeneruj_vlnu(s)


        
    
