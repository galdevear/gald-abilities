##
 # schedule.mcfunction.mcfunction
 # 
 #
 # Created by Galdeveer.
##
schedule function veer:gabil/schedule_10s 10s

# function veer:gabil/spider/stats
function veer:gabil/undead/burn_in_daylight

execute if predicate veer:gabil/undead/moon_phase if entity @s[type=#veer:gabil/undead/undead, tag=!veer.gabil.mob] run team join veer.ga.undead @s

tag @s add veer.gabil.mob