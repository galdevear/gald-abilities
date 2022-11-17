##
 # hurt_by_smite-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

execute if entity @s[advancements={veer:gabil/smite/hurt_by_smite={player_hurt_by_entity_with_smite_1=true}}] run effect give @s wither 4 0 false
execute if entity @s[advancements={veer:gabil/smite/hurt_by_smite={player_hurt_by_entity_with_smite_2=true}}] run effect give @s wither 6 0 false
execute if entity @s[advancements={veer:gabil/smite/hurt_by_smite={player_hurt_by_entity_with_smite_3=true}}] run effect give @s wither 8 0 false
execute if entity @s[advancements={veer:gabil/smite/hurt_by_smite={player_hurt_by_entity_with_smite_4=true}}] run effect give @s wither 10 0 false
execute if entity @s[advancements={veer:gabil/smite/hurt_by_smite={player_hurt_by_entity_with_smite_5=true}}] run effect give @s wither 12 0 false

# Revoke advancement at end
advancement revoke @s only veer:gabil/smite/hurt_by_smite