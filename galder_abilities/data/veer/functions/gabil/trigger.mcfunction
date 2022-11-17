##
 # trigger_add.mcfunction
 # 
 #
 # Created by Galdeveer.
##

execute if score @s veer.ga.nAbils matches 2 unless score @s leave_class matches 0 run function veer:gabil/trigger_remove_class
# Anything that doesn't fully remove everything or add everything is currently disabled until the trigger commands are refactored to use a small handful of objectives with /trigger obj set #
# execute if score @s veer.ga.nAbils matches 1 run function veer:gabil/trigger_remove-a
# execute if score @s veer.ga.nAbils matches 1 run function veer:gabil/trigger_add-b
execute if score @s veer.ga.nAbils matches 0 unless score @s join_class matches 0 run function veer:gabil/trigger_add_class