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

DayTarget=$3
DayToday="aujourd'hui"
DayTomorrow="demain"
DayMonday="lundi"
DayTuesday="mardi"
DayWednesday="mercredi"
DayThursday="jeudi"
DayFriday="vendredi"
DaySaturday="samedi"
DaySunday="dimanche"

if [ $DayTarget = $DayToday ]
then
DayTime="Today"
fi

if [ $DayTarget = $DayTomorrow ]
then
DayTime="tomorrow"
fi

if [ $DayTarget = $DayMonday ]
then
DayTime="Mon"
fi

if [ $DayTarget = $DayTuesday ]
then
DayTime="Tue"
fi

if [ $DayTarget = $DayWednesday ]
then
DayTime="Wed"
fi

if [ $DayTarget = $DayThursday ]
then
DayTime="Thu"
fi

if [ $DayTarget = $DayFriday ]
then
DayTime="Fri"
fi

if [ $DayTarget = $DaySaturday ]
then
DayTime="Sat"
fi

if [ $DayTarget = $DaySunday ]
then
DayTime="Sun"
fi


target=$1$2
JarvisFolder="/plugins_installed/jarvis-alarm-test/command.sh"

if [ $DayTarget = $DayToday ]
then
	at $target < $JarvisFolder
	at -l
else
	at $target $DayTime < $JarvisFolder
	at -l
fi

}

pg_alarm_remove_fr () {
for i in `atq | awk '{ }'`;do atrm $i;done
say "$(pg_jarvis-alarmremove_fr "alarm_remove")" 
}

# ---------------------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------------------

pg_alarm_main_en () {
say "$(pg_jarvis-alarm_en "alarm_hours" "$1" "$2" "$3")" 
DayTarget=$3
DayToday="today"
DayTomorrow="tomorrow"
DayMonday="monday"
DayTuesday="tuesday"
DayWednesday="wednesday"
DayThursday="thursday"
DayFriday="friday"
DaySaturday="saturday"
DaySunday="sunday"

if [ $DayTarget = $DayToday ]
then
DayTime="Today"
fi

if [ $DayTarget = $DayTomorrow ]
then
DayTime="tomorrow"
fi

if [ $DayTarget = $DayMonday ]
then
DayTime="Mon"
fi

if [ $DayTarget = $DayTuesday ]
then
DayTime="Tue"
fi

if [ $DayTarget = $DayWednesday ]
then
DayTime="Wed"
fi

if [ $DayTarget = $DayThursday ]
then
DayTime="Thu"
fi

if [ $DayTarget = $DayFriday ]
then
DayTime="Fri"
fi

if [ $DayTarget = $DaySaturday ]
then
DayTime="Sat"
fi

if [ $DayTarget = $DaySunday ]
then
DayTime="Sun"
fi


target=$1$2
JarvisFolder="/plugins_installed/jarvis-alarm-test/command.sh"

if [ $DayTarget = $DayToday ]
then
	at $target < $JarvisFolder
	at -l
else
	at $target $DayTime < $JarvisFolder
	at -l
fi
}

pg_alarm_remove_en () {
for i in `atq | awk '{ }'`;do atrm $i;done
say "$(pg_jarvis-alarmremove_en "alarm_remove")" 
}
