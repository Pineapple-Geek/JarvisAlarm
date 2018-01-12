#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh

pg_alarm_main_fr () {
say "$(pg_jarvis-alarm_fr "alarm_hours" "$1" "$2" "$3")" 

if [[ $3 = "aujourd'hui"]]; then
	DayTime="Today"
fi

if [[ $3 = "demain"]]; then
	DayTime="tomorrow"
fi

if [[ $3 = "lundi"]]; then
	DayTime="Mon"
fi

if [[ $3 = "mardi"]]; then
	DayTime="Tue"
fi

if [[ $3 = "mercredi"]]; then
	DayTime="Wed"
fi

if [[ $3 = "jeudi"]]; then
	DayTime="Thu"
fi

if [[ $3 = "vendredi"]]; then
	DayTime="Fri"
fi

if [[ $3 = "samedi"]]; then
	DayTime="Sat"
fi

if [[ $3 = "dimanche"]]; then
	DayTime="Sun"
fi


target=$1$2
workFolder=$(readlink -f $(dirname $0))
JarvisCommand="/plugins_installed/jarvis-alarm-test/command.sh"
JarvisFolder=$workFolder$JarvisCommand
if [[ $DayTime = "Today"]]; then
	at $target < $JarvisFolder
	at -l
else
	at $target $DayTime < $JarvisFolder
	at -l
fi
}

# ---------------------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------------------

pg_alarm_main_en () {
say "$(pg_jarvis-alarm_fr "alarm_hours" "$1" "$2" "$3")" 

target=$1$2
workFolder=$(readlink -f $(dirname $0))
JarvisCommand="/plugins_installed/jarvis-alarm-test/command.sh"
JarvisFolder=$workFolder$JarvisCommand

at $target < $JarvisFolder
at -l
}
