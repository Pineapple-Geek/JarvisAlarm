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

# convert wakeup time to seconds
target_h=$(($1 * 60 * 60))
target_m=$(($2 * 60))
target_s_t=$(($target_h + $target_m))

# get current time and convert to seconds
clock_h=$(date +%H)
clock_m=$(date +%M)
clock_s=$(date +%S)
clock_s_t=`dc -e "$clock_h 60 60 ** $clock_m 60 * $clock_s ++p"`

calculate difference in times, add number of sec. in day and mod by same
sec_until=`dc -e "24 60 60 **d $target_s_t $clock_s_t -+r%p"`

say "L'alarme disparaîtra à $1 heure $2."

sleep $sec_until

say "Wake Up"
}
