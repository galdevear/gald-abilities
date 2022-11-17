##
 # burn_in_daylight-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##
#@private
#declare tag veer.gabil.undead.burn

execute at @s if entity @s[predicate=veer:gabil/burn_in_daylight] run tag @s add veer.gabil.undead.burn

execute at @s if entity @s[tag=veer.gabil.undead.burn] anchored feet positioned ~ ~ ~ if block ~ ~ ~ #veer:gabil/air run setblock ~ ~ ~ fire destroy
execute at @s if entity @s[tag=veer.gabil.undead.burn] anchored feet positioned ~ ~1 ~ if block ~ ~ ~ #veer:gabil/air run setblock ~ ~ ~ fire destroy

tag @s remove veer.gabil.undead.burn