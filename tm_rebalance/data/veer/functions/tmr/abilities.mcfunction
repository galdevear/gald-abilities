##
 # explode.mcfunction
 # 
 # Created by .
##

# item replace entity @s armor.head with minecraft:bone{Enchantments:[{id:"minecraft:blast_protection",lvl:100s},{id:"minecraft:binding_curse",lvl:1s}]}
effect give @s resistance 1 4
effect give @s regeneration 1 2 true
effect give @s hunger 3 2 true
# effect give @s mining_fatigue 9999 1 true
execute at @s positioned ~ ~-0.1 ~ run summon minecraft:tnt