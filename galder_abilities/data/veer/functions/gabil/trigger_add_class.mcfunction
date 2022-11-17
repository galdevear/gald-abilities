##
 # trigger_add-a.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#TODO: Remove. Just previous version of code at the bottom
# Convert class trigger to the 2 subtriggers if needed
# execute if score @s join_class matches 1 run scoreboard players set @s join_class 2
# execute if score @s join_class matches 1 run scoreboard players set @s join_class 3
# execute if score @s join_class matches 4 run scoreboard players set @s join_class 5
# execute if score @s join_class matches 4 run scoreboard players set @s join_class 6
# execute if score @s join_class matches 7 run scoreboard players set @s join_class 8
# execute if score @s join_class matches 7 run scoreboard players set @s join_class 9
# execute if score @s join_class matches 10 run scoreboard players set @s join_class 11
# execute if score @s join_class matches 10 run scoreboard players set @s join_class 12
# execute if score @s join_class matches 13 run scoreboard players set @s join_class 14
# execute if score @s join_class matches 13 run scoreboard players set @s join_class 15
# execute if score @s join_class matches 16 run scoreboard players set @s join_class 17
# execute if score @s join_class matches 16 run scoreboard players set @s join_class 18
# execute if score @s join_class matches 19 run scoreboard players set @s join_class 20
# execute if score @s join_class matches 19 run scoreboard players set @s join_class 21

#TODO: Remove. Just previous version of above code
# execute if score @s android matches 1.. run trigger android.battery
# execute if score @s android matches 1.. run trigger android.magnetic
# execute if score @s chimender matches 1.. run trigger chimender.phase
# execute if score @s chimender matches 1.. run trigger chimender.teleport
# execute if score @s coral_golem matches 1.. run trigger coral_golem.aquatect
# execute if score @s coral_golem matches 1.. run trigger coral_golem.hydrate
# execute if score @s ground_dragon matches 1.. run trigger ground_dragon.breath
# execute if score @s ground_dragon matches 1.. run trigger ground_dragon.glide
# execute if score @s parasquid matches 1.. run trigger parasquid.flying_squid
# execute if score @s parasquid matches 1.. run trigger parasquid.snow_cloud
# execute if score @s spider matches 1.. run trigger spider.arachnid
# execute if score @s spider matches 1.. run trigger spider.sanity
# execute if score @s squattle matches 1.. run trigger squattle.camo
# execute if score @s squattle matches 1.. run trigger squattle.shell

execute if score @s join_class matches 1 run function #veer:gabil/traits/android/battery-add
execute if score @s join_class matches 1 run function #veer:gabil/traits/android/magnetic-add
execute if score @s join_class matches 4 run function #veer:gabil/traits/chimender/phase-add
execute if score @s join_class matches 4 run function #veer:gabil/traits/chimender/teleport-add
execute if score @s join_class matches 7 run function #veer:gabil/traits/coral_golem/aquatect-add
execute if score @s join_class matches 7 run function #veer:gabil/traits/coral_golem/hydrate-add
execute if score @s join_class matches 10 run function #veer:gabil/traits/ground_dragon/breath-add
execute if score @s join_class matches 10 run function #veer:gabil/traits/ground_dragon/glide-add
execute if score @s join_class matches 13 run function #veer:gabil/traits/parasquid/flight-add
execute if score @s join_class matches 13 run function #veer:gabil/traits/parasquid/snow-add
execute if score @s join_class matches 16 run function #veer:gabil/traits/spider/arachnid-add
execute if score @s join_class matches 16 run function #veer:gabil/traits/spider/sanity-add
execute if score @s join_class matches 19 run function #veer:gabil/traits/squattle/camo-add
execute if score @s join_class matches 19 run function #veer:gabil/traits/squattle/shell-add

scoreboard players set @s veer.ga.nAbils 2
scoreboard players enable @s leave_class
scoreboard players set @s join_class 0
# Other scoreboard is now definitely already disabled.