##
 # trigger_remove-b.mcfunction
 # 
 #
 # Created by Galdeveer.
##

# Convert class trigger to the 2 subtriggers if needed
# execute if score @s android.remove matches 1.. run trigger android.battery.remove
# execute if score @s android.remove matches 1.. run trigger android.magnetic.remove
# execute if score @s chimender.remove matches 1.. run trigger chimender.phase.remove
# execute if score @s chimender.remove matches 1.. run trigger chimender.teleport.remove
# execute if score @s coral_golem.remove matches 1.. run trigger coral_golem.aquatect.remove
# execute if score @s coral_golem.remove matches 1.. run trigger coral_golem.hydrate.remove
# execute if score @s ground_dragon.remove matches 1.. run trigger ground_dragon.breath.remove
# execute if score @s ground_dragon.remove matches 1.. run trigger ground_dragon.glide.remove
# execute if score @s parasquid.remove matches 1.. run trigger parasquid.flying_squid.remove
# execute if score @s parasquid.remove matches 1.. run trigger parasquid.snow_cloud.remove
# execute if score @s spider.remove matches 1.. run trigger spider.arachnid.remove
# execute if score @s spider.remove matches 1.. run trigger spider.sanity.remove
# execute if score @s squattle.remove matches 1.. run trigger squattle.camo.remove
# execute if score @s squattle.remove matches 1.. run trigger squattle.shell.remove

execute if score @s leave_class matches 1 run function #veer:gabil/traits/android/battery-remove
execute if score @s leave_class matches 1 run function #veer:gabil/traits/android/magnetic-remove
# execute if score @s chimender.phase.remove matches 1.. if score @s veer.ga.nAbils matches 1.. run function #veer:gabil/traits/magnetic
# execute if score @s chimender.teleport.remove matches 1.. if score @s veer.ga.nAbils matches 1.. run function #veer:/traits/magnetic
execute if score @s leave_class matches 7 run function #veer:gabil/traits/coral_golem/aquatect-remove
execute if score @s leave_class matches 7 run function #veer:gabil/traits/coral_golem/play_dead-remove
execute if score @s leave_class matches 10 run function #veer:gabil/traits/ground_dragon/breath-remove
execute if score @s leave_class matches 10 run function #veer:gabil/traits/ground_dragon/glide-remove
execute if score @s leave_class matches 13 run function #veer:gabil/traits/parasquid/flight-remove
execute if score @s leave_class matches 13 run function #veer:gabil/traits/parasquid/snow-remove
execute if score @s leave_class matches 16 run function #veer:gabil/traits/spider/arachnid-remove
execute if score @s leave_class matches 16 run function #veer:gabil/traits/spider/sanity-remove
execute if score @s leave_class matches 19 run function #veer:gabil/traits/squattle/camo-remove
execute if score @s leave_class matches 19 run function #veer:gabil/traits/squattle/shell-remove

scoreboard players set @s veer.ga.nAbils 0
scoreboard players set @s remove_class 0
scoreboard players enable @s join_class
