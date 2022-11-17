##
 # schedule.mcfunction.mcfunction
 # 
 #
 # Created by .
##

schedule function veer:tmr/schedule 4s
execute as @e[tag=veer.tmr.subterranean_rye] if entity @s[predicate=veer:tmr/is_sneaking,predicate=veer:tmr/is_underground] run function veer:tmr/abilities

effect give @s night_vision 120 0 true