#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh

pg_alarm_main_fr () {
#say "$(pg_jarvis-alarm_fr "alarm_hours" "$1" "$2")" 

<<<<<<< HEAD
# convert wakeup time to seconds
target_h="$1"
target_m="$2"
=======
date="$1:$2 Today"
>>>>>>> c41c9dd81850065a60aa7b7bcefd4bbaec0e03d5

say "L'alarme est programmé pour le $(date --date="$date")."
say "Veuillez attendre la fin de l'alarme pour donner d'autre instructions."
<<<<<<< HEAD

at target_h:target_m

time_h=$(date +%H)
time_m=$(date +%M)

say "Réveillez-vous il es $time_h heures $time_m"
=======
sleep $(( $(date --date="$date" +%s) - $(date +%s) ));

if [ $wake_music != "null" ]
then
   play $wake_music
fi

say "Il es $1 heures $2"
>>>>>>> c41c9dd81850065a60aa7b7bcefd4bbaec0e03d5
}

pg_reveil_main_fr () {
#say "$(pg_jarvis-alarm_fr "alarm_hours" "$1" "$2")" 

date="$1:$2 Tomorrow"

say "Le réveil est programmé pour le $(date --date="$date")."
say "Veuillez attendre la fin du réveil pour donner d'autre instructions."
sleep $(( $(date --date="$date" +%s) - $(date +%s) ));

if [ $wake_music != "null" ]
then
   play $wake_music
fi

say "Réveillez-vous il es $1 heures $2"
}
