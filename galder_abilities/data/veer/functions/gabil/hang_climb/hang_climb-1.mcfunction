##
 # hang_climb.mcfunction
 # 
 # Created by Galdeveer.
##

#declare tag veer.gabil.hang_climb.didClimb
#declare tag veer.gabil.hang_climb.canClimb

tag @s remove veer.gabil.spider.hang_climb.didClimb
tag @s[tag=veer.gabil.spider.hang_climb.canClimb] add veer.gabil.spider.hang_climb.didClimb
tag @s remove veer.gabil.spider.hang_climb.canClimb

# tag @s remove veer.gabil.hang_climb.didClimb
# tag @s[tag=veer.gabil.hang_climb.canClimb] add veer.gabil.hang_climb.didClimb
execute at @s run tag @s[predicate=veer:gabil/is_sneaking,predicate=veer:gabil/hang_climb/can] add veer.gabil.hang_climb.canClimb

#then
effect give @s[tag=veer.gabil.hang_climb.canClimb] levitation 1 0 true
#else if
#TODO: Make sure you don't clear levitation from shulkers.
effect clear @s[tag=!veer.gabil.hang_climb.canClimb,tag=veer.gabil.spider.hang_climb.didClimb] levitation