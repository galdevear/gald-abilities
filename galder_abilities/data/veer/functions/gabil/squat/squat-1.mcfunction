##
 # squat-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#declare tag veer.gabil.squat.isSneaking
#declare tag veer.gabil.squat.wasSneaking
#alias uuid 3a35b31d-eb40-4e1e-a241-e1f097d0029f veer.gabil.squat.knockback_resistance
#alias uuid 277d9a5c-a9e8-4589-8d70-3c6703ce9de5 veer.gabil.squat.armor
#alias uuid  veer.gabil.squat.armor_toughness

# Update wasSneaking
tag @s remove veer.gabil.squat.wasSneaking
tag @s[tag=veer.gabil.squat.isSneaking] add veer.gabil.squat.wasSneaking
# Update isSneaking
tag @s remove veer.gabil.squat.isSneaking
execute if entity @s[predicate=veer:gabil/is_sneaking] run tag @s add veer.gabil.squat.isSneaking

# Update wasSneaking
tag @s remove veer.gabil.squat.wasSprinting
tag @s[tag=veer.gabil.squat.isSprinting] add veer.gabil.squat.wasSprinting
# Update isSneaking
tag @s remove veer.gabil.squat.isSprinting
tag @s[predicate=veer:gabil/is_sprinting] add veer.gabil.squat.isSprinting

# if wasn't sneaking, but is now
attribute @s[tag=!veer.gabil.squat.wasSneaking, tag=veer.gabil.squat.isSneaking] generic.knockback_resistance modifier add 3a35b31d-eb40-4e1e-a241-e1f097d0029f "veer.gabil.squat.knockback_resistance" 1 add
attribute @s[tag=!veer.gabil.squat.wasSneaking, tag=veer.gabil.squat.isSneaking] generic.armor_toughness modifier add 40b7f2da-0a51-4eae-b600-1785d1c89aa9 "veer.gabil.squat.armor_toughness" 5 add
attribute @s[tag=!veer.gabil.squat.wasSneaking, tag=veer.gabil.squat.isSneaking] generic.armor_toughness modifier add 277d9a5c-a9e8-4589-8d70-3c6703ce9de5 "veer.gabil.squat.armor" 1.3 multiply

# if was sneaking, but isn't now
attribute @s[tag=veer.gabil.squat.wasSneaking, tag=!veer.gabil.squat.isSneaking] generic.knockback_resistance modifier remove 3a35b31d-eb40-4e1e-a241-e1f097d0029f
attribute @s[tag=veer.gabil.squat.wasSneaking, tag=!veer.gabil.squat.isSneaking] generic.armor_toughness modifier remove 40b7f2da-0a51-4eae-b600-1785d1c89aa9
attribute @s[tag=veer.gabil.squat.wasSneaking, tag=!veer.gabil.squat.isSneaking] generic.armor_toughness modifier remove 277d9a5c-a9e8-4589-8d70-3c6703ce9de5

# if wasn't sprinting, but is now
attribute @s[tag=!veer.gabil.squat.wasSprinting, tag=veer.gabil.squat.isSprinting] generic.knockback_resistance modifier add af192361-b046-4ea2-9bb9-a33e4381fe74 "veer.gabil.squat.knockback_resistance" -1 add
attribute @s[tag=!veer.gabil.squat.wasSprinting, tag=veer.gabil.squat.isSprinting] generic.armor_toughness modifier add 561696f8-ccc5-4798-85c0-56d7bb557ae2 "veer.gabil.squat.armor_toughness" -5 add
attribute @s[tag=!veer.gabil.squat.wasSprinting, tag=veer.gabil.squat.isSprinting] generic.armor_toughness modifier add abf065b1-3143-4ded-a343-fbaea2e27ef5 "veer.gabil.squat.armor" 0.7 multiply

# if was sprinting, but isn't now
attribute @s[tag=veer.gabil.squat.wasSprinting, tag=!veer.gabil.squat.isSprinting] generic.knockback_resistance modifier remove af192361-b046-4ea2-9bb9-a33e4381fe74
attribute @s[tag=veer.gabil.squat.wasSprinting, tag=!veer.gabil.squat.isSprinting] generic.armor_toughness modifier remove 561696f8-ccc5-4798-85c0-56d7bb557ae2
attribute @s[tag=veer.gabil.squat.wasSprinting, tag=!veer.gabil.squat.isSprinting] generic.armor_toughness modifier remove abf065b1-3143-4ded-a343-fbaea2e27ef5