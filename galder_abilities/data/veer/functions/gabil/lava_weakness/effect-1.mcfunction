##
 # enter_lava.mcfunction
 # 
 #
 # Created by Galdeveer.
##

# effect give @s wither 1 1 true
#declare tag veer.gabil.lava_weakness.inLava
#TODO:
tag @s remove veer.gabil.lava_weakness.enter_lava.inlava
execute anchored eyes at @s positioned ^ ^ ^ anchored eyes if block ~ ~ ~ #veer:gabil/lava_like run tag @s add veer.gabil.lava_weakness.enter_lava.inlava

# TODO: Change to enter_lava-2
effect give @s[tag=veer.gabil.lava_weakness.enter_lava.inlava] hunger 10 1 true
# Match slowness w/ rain