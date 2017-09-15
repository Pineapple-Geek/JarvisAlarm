#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh

pg_alarm_main () {
    say "$(pg_jarvis-alarm_lang "alarm_hours" "$1" "$2")" 
   	RH="$1"
    RM="$2"

    T=1

	while [ 1 -eq $T ];do
		H= date +%H
		M= date +%M

		    if [ "$H" = "$RH" ] && [ "$M" = "$RM" ]
		    then
			    say "Il est l'heure de se lever!"
			    T=2
		    fi

	done
}
