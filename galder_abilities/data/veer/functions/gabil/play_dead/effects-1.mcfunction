##
 # effects.mcfunction
 # 
 # Created by Galdeveer.
##

execute if entity @s[predicate=veer:gabil/is_sneaking, x_rotation=80..] unless score @s veer.ga.health matches 0 unless score @s veer.ga.health matches 20 run function veer:gabil/play_dead/effects-2
execute if score @s veer.ga.health matches 1..5 run function veer:gabil/play_dead/effects-2