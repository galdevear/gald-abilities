##
 # glide-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

execute if entity @s[tag=!veer.gabil.light_sf.invertGlide] run function veer:gabil/light_sf/glide-1-1
execute if entity @s[tag=veer.gabil.light_sf.invertGlide] run function veer:gabil/light_sf/glide-1-2

#declare tag veer.gabil.light_sf.light
#declare tag veer.gabil.light_sf.invertGlide
#declare tag veer.gabil.light_sf.hadLight

#alias uuid 68bef2b6-209c-4cf0-a45f-6614ddbc88ad veer.gabil.light_sf.speedAttr

# Update hadLight
tag @s remove veer.gabil.light_sf.hadLight
tag @s[tag=veer.gabil.light_sf.light] add veer.gabil.light_sf.hadLight

# Update light
tag @s remove veer.gabil.light_sf.light
execute at @s unless entity @s[predicate=!veer:gabil/light_sf/light, predicate=!veer:gabil/light_sf/in_warm_place] if entity @s[predicate=!veer:gabil/light_sf/in_cold_place] run tag @s add veer.gabil.light_sf.light

# Update invertGlide
tag @s remove veer.gabil.light_sf.invertGlide
execute if entity @s[tag=!veer.gabil.light_sf.light] run tag @s add veer.gabil.light_sf.invertGlide

attribute @s generic.movement_speed modifier add 68bef2b6-209c-4cf0-a45f-6614ddbc88ad "veer.g_abil.light_sf.fast" 0.035 add