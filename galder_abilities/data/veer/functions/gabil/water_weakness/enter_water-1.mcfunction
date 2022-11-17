##
 # enter_water.mcfunction
 # 
 #
 # Created by Galdeveer.
##

# effect give @s wither 1 1 true
#declare tag veer.gabil.water_weakness.enter_water.inWater
#TODO:
tag @s remove veer.gabil.water_weakness.enter_water.inWater
execute anchored eyes at @s positioned ^ ^ ^ anchored eyes if predicate veer:gabil/blocks/like_water run tag @s add veer.gabil.water_weakness.enter_water.inWater

# TODO: Change to enter_water-2
effect give @s[tag=veer.gabil.water_weakness.enter_water.inWater, predicate=!veer:gabil/is_swimming] blindness 5 1 true
effect give @s[tag=veer.gabil.water_weakness.enter_water.inWater, predicate=!veer:gabil/is_swimming] slowness 5 100 true
# Match slowness w/ rain