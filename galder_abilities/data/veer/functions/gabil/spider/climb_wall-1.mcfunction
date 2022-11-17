##
 # climb_wall.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#>@private
#declare tag veer.gabil.spider.climb_wall.canClimb
#>@private
#declare tag veer.gabil.spider.climb_wall.didClimb

execute at @s if entity @s[predicate=veer:gabil/is_sneaking,predicate=veer:gabil/spider/has_adjacent_block] run tag @s add veer.gabil.spider.climb_wall.canClimb
execute at @s if entity @s[tag=!veer.gabil.spider.climb_wall.canClimb, tag=veer.gabil.spider.climb_wall.didClimb] positioned ~ ~-1 ~ if entity @s[predicate=veer:gabil/is_sneaking] if predicate veer:gabil/spider/has_adjacent_block run tag @s add veer.gabil.spider.climb_wall.canClimb
execute at @s if entity @s[tag=!veer.gabil.spider.climb_wall.canClimb, tag=veer.gabil.spider.climb_wall.didClimb] positioned ~ ~1 ~ if entity @s[predicate=veer:gabil/is_sneaking] if predicate veer:gabil/spider/has_adjacent_block run tag @s add veer.gabil.spider.climb_wall.canClimb

#then
effect give @s[tag=veer.gabil.spider.climb_wall.canClimb] levitation 1 2 true
#else if
effect clear @s[tag=!veer.gabil.spider.climb_wall.canClimb,tag=veer.gabil.spider.climb_wall.didClimb] levitation

tag @s[tag=veer.gabil.spider.climb_wall.didClimb] remove veer.gabil.spider.climb_wall.didClimb
tag @s[tag=veer.gabil.spider.climb_wall.canClimb] add veer.gabil.spider.climb_wall.didClimb
tag @s[tag=veer.gabil.spider.climb_wall.canClimb] remove veer.gabil.spider.climb_wall.canClimb