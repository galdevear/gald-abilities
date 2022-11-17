##
 # glide-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

execute if entity @s[predicate=veer:gabil/is_sprinting] run effect give @s slow_falling 1 1 true
# execute unless entity @s[predicate=!veer:gabil/is_sprinting, predicate=!veer:gabil/is_flying] run say slow
execute if entity @s[predicate=!veer:gabil/is_sprinting] run effect clear @s slow_falling
# execute if entity @s[predicate=!veer:gabil/is_sprinting, predicate=!veer:gabil/is_flying] run say fast

# say 2