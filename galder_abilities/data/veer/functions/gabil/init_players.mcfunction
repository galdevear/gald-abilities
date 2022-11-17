##
 # init_player.mcfunction
 # 
 #
 # Created by Galdeveer.
##
#TODO: Rename update player

scoreboard players add @s veer.ga.nAbils 0

# Update triggers based on nAbils
execute if score @s veer.ga.nAbils matches 0 run scoreboard players enable @s join_class
execute if score @s veer.ga.nAbils matches 0 run trigger leave_class set 0
execute if score @s veer.ga.nAbils matches 2 run scoreboard players enable @s leave_class
execute if score @s veer.ga.nAbils matches 2 run trigger join_class set 0
execute if entity @s[scores={veer.ga.nAbils=1}] run say Error#1: Please report to admin
execute if entity @s[scores={veer.ga.nAbils=..-1}] run say Error#2: Please report to admin
execute if entity @s[scores={veer.ga.nAbils=3..}] run say Error#3: Please report to admin
# Currently no case for matches 1.
# Needs to be refactored to accomodate.

# Make the version numbers match so this doesn't run again until the version number is changed.
execute store result score @s veer.ga.player run scoreboard players get $CUR_VER veer.ga.player