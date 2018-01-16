volume=1 
MAX_VOLUME=75 #don't blow your eardrums 
amixer sset PCM ${volume}% #set the volume low first 
mpg321 plugins_installed/jarvis-alarm-test/audio/melodie.mp3 & #you could do random stuff to select from a directory too  
while [ "$volume" -lt "$MAX_VOLUME" ] ; do 
   amixer sset PCM ${volume}% 
   ((volume=$volume+1)) 
   killall qiv #to keep the windows from stacking up  
   sleep 10 # decide how long to sleep between volume increases 
done 
