##
 # effects.mcfunction
 # 
 # Created by Galdeveer.
##



#TODO: Refactor
# Dolphins Grace
effect give @s[predicate=veer:gabil/fish/do_dolphins_grace] dolphins_grace 2 2 true
# Conduit Power
execute anchored eyes at @s if predicate veer:gabil/fish/at_water run effect give @s conduit_power 2 1 true