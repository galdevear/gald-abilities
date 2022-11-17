##
 # camo-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

# Note: Glowing does not allow mobs to see invisible players

# Check if player is crawling, swiming, flying, etc.
#declare tag veer.gabil.camo.isCrawling craw/fly/swim
tag @s remove veer.gabil.camo.isCrawling
execute anchored eyes at @s positioned ^ ^ ^ positioned ~ ~-1.65 ~ unless entity @s[distance=..0.5] run tag @s add veer.gabil.camo.isCrawling

# Give invis lvl2
effect give @s[tag=veer.gabil.camo.isCrawling] invisibility 10 1 true