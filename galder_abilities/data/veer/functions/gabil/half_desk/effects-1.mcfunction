##
 # effects-1.mcfunction
 # 
 # Created by Galdeveer.
##

execute unless entity @s[predicate=!veer:gabil/is_sneaking, scores={veer.ga.health=6..}] unless score @s veer.ga.health matches 0 as @e[distance=..7] run function veer:gabil/half_desk/effects-2