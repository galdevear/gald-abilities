##
 # float-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#declare tag veer.gabil.parasquid.isSneaking
#declare tag veer.gabil.parasquid.isFlying Crawling/Swimming/Flying

tag @s remove veer.gabil.parasquid.isSneaking
tag @s[predicate=veer:gabil/is_sneaking] add veer.gabil.parasquid.isSneaking

tag @s remove veer.gabil.parasquid.isFlying
execute anchored eyes at @s positioned ^ ^ ^ positioned ~ ~-1.65 ~ unless entity @s[distance=..0.5] run tag @s add veer.gabil.parasquid.isFlying

# If sneaking
#   clear levitation
execute if entity @s[tag=veer.gabil.parasquid.isSneaking] run effect clear @s levitation
#   jump boost
execute if entity @s[tag=veer.gabil.parasquid.isSneaking] run effect give @s jump_boost 1 2 true

# if not sneaking & not flying/crawling/swimming
#   Levitate
execute if entity @s[tag=!veer.gabil.parasquid.isSneaking, tag=!veer.gabil.parasquid.isFlying] run effect give @s levitation 2 254 true

# if flying/crawling/swimming
#   Slowfall
execute if entity @s[tag=veer.gabil.parasquid.isFlying] run effect give @s slow_falling 2 2 true