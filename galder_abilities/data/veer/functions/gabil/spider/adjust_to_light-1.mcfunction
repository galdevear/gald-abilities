##
 # adjust_to_light.mcfunction
 # 
 # Created by Galdeveer.
##
#declare tag veer.gabil.spider.isDark

# Set is dark
# The nether is awkward in terms of lighting. Not sure how to handle it yet.
tag @s remove veer.gabil.spider.isDark
execute at @s if predicate veer:gabil/spider/is_dark if predicate veer:gabil/spider/if_nether_is_dark run tag @s add veer.gabil.spider.isDark

# Give night vision in dark
execute if entity @s[tag=veer.gabil.spider.isDark] run effect give @s night_vision 15 0 true
# Clear night vision
execute if entity @s[tag=!veer.gabil.spider.isDark, predicate=veer:gabil/spider/has_low_duration_night_vision] run effect clear @s night_vision

# Reset attack
attribute @s generic.attack_damage modifier remove 163d18e4-a785-4dcd-b8da-cdf720934969
# Divide attack
execute if entity @s[tag=veer.gabil.spider.isDark] run attribute @s generic.attack_damage modifier add 163d18e4-a785-4dcd-b8da-cdf720934969 "veer.gabil.spider.attack_skew" 1.2 multiply
# Multiply attack
execute if entity @s[tag=!veer.gabil.spider.isDark] run attribute @s generic.attack_damage modifier add 163d18e4-a785-4dcd-b8da-cdf720934969 "veer.gabil.spider.attack_skew" 0.8 multiply