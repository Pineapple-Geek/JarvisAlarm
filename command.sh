#------------------------------------------
#-- Volume Progressif Par PineApple-Geek --
#------------------------------------------
volume=10 #Volume Minimal souhaiter
MAX_VOLUME=100 #Volume Maximal souhaiter
amixer -c 1 set Master ${volume}% #Demarrage du volume au minimal 
mpg321 plugins_installed/jarvis-alarm-test/audio/melodie.mp3 & #Lancement de la musique  
while [ "$volume" -lt "$MAX_VOLUME" ] ; do 
   amixer -c 1 set Master ${volume}% 
   echo "$volume"
   ((volume=$volume+5)) 
   killall qiv #Commande pour empêcher les fenêtres de s'empiler  
   sleep 1 # décider de combien de temps le processus va s'arreter entre les augmentations de volume
done 
