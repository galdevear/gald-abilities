##
 # detect-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

# Overhall this to make use of advancements for lightning rods etc.

#declare tag veer.gabil.magnetic.pushA
#declare tag veer.gabil.magnetic.pullA
#declare tag veer.gabil.magnetic.pushB
#declare tag veer.gabil.magnetic.pullB

# Initialize local tags
tag @s remove veer.gabil.magnetic.pullA
tag @s remove veer.gabil.magnetic.pullB
tag @s remove veer.gabil.magnetic.pushB
tag @s remove veer.gabil.magnetic.pushA

# Set local tags
# execute at @s if predicate veer:gabil/magnetic/pull_above run tag @s add veer.gabil.magnetic.pullA
execute at @s if predicate veer:gabil/magnetic/pull_below run tag @s add veer.gabil.magnetic.pullB
execute at @s if predicate veer:gabil/magnetic/push_above run tag @s add veer.gabil.magnetic.pushA
execute at @s if predicate veer:gabil/magnetic/push_below run tag @s add veer.gabil.magnetic.pushB

tag @s[tag=veer.gabil.magnetic.pullA] add veer.gabil.magnetic.ifLrDown
execute at @s if block ~ ~1 ~ #veer:gabil/magnetic/copper unless block ~ ~1 ~ lightning_rod[facing=down] run tag @s add veer.gabil.magnetic.pullA
execute at @s if block ~ ~2 ~ #veer:gabil/magnetic/copper unless block ~ ~2 ~ lightning_rod[facing=down] run tag @s add veer.gabil.magnetic.pullA
execute at @s if block ~ ~3 ~ #veer:gabil/magnetic/copper unless block ~ ~3 ~ lightning_rod[facing=down] run tag @s add veer.gabil.magnetic.pullA
execute at @s if block ~ ~4 ~ #veer:gabil/magnetic/copper unless block ~ ~4 ~ lightning_rod[facing=down] run tag @s add veer.gabil.magnetic.pullA


#?
execute if entity @s[tag=veer.gabil.magnetic.pullA] run effect give @s levitation 2 10 true
execute if entity @s[tag=veer.gabil.magnetic.pushB] run effect give @s levitation 2 10 true

execute if entity @s[tag=!veer.gabil.magnetic.pullA,tag=veer.gabil.magnetic.pulledA] run effect clear @s levitation
execute if entity @s[tag=!veer.gabil.magnetic.pushB,tag=veer.gabil.magnetic.pushedB] run effect clear @s levitation

#Add or Remove pulled A and pushed B
execute if entity @s[tag=veer.gabil.magnetic.pullA] run tag @s add veer.gabil.magnetic.pulledA
execute if entity @s[tag=veer.gabil.magnetic.pushB] run tag @s add veer.gabil.magnetic.pushedB
execute if entity @s[tag=!veer.gabil.magnetic.pullA] run tag @s remove veer.gabil.magnetic.pulledA
execute if entity @s[tag=!veer.gabil.magnetic.pushB] run tag @s remove veer.gabil.magnetic.pushedB

execute if entity @s[tag=veer.gabil.magnetic.pullB] run effect give @s jump_boost 2 200 true
execute if entity @s[tag=veer.gabil.magnetic.pushA] run effect give @s jump_boost 2 200 true

execute if entity @s[tag=!veer.gabil.magnetic.pushA,tag=veer.gabil.magnetic.pushedA] run effect clear @s jump_boost
execute if entity @s[tag=!veer.gabil.magnetic.pullB,tag=veer.gabil.magnetic.pulledB] run effect clear @s jump_boost

#Add or Remove pushed A and pulled B
execute if entity @s[tag=veer.gabil.magnetic.pushA] run tag @s add veer.gabil.magnetic.pushedA
execute if entity @s[tag=veer.gabil.magnetic.pullB] run tag @s add veer.gabil.magnetic.pulledB
execute if entity @s[tag=!veer.gabil.magnetic.pushA] run tag @s remove veer.gabil.magnetic.pushedA
execute if entity @s[tag=!veer.gabil.magnetic.pullB] run tag @s remove veer.gabil.magnetic.pulledB