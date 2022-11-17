##
 # glide-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

execute if entity @s[predicate=!veer:gabil/is_sprinting] run effect give @s slow_falling 1 1 true
execute if entity @s[predicate=veer:gabil/is_sprinting] run effect clear @s slow_falling