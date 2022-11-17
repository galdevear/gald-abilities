##
 # enter_tripwire-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##
advancement revoke @s only veer:gabil/spider/enter_tripwire

effect give @s[predicate=!veer:gabil/spider/has_normal_levitation] levitation 1 255 true

# TODO: Clear when no longer in tripwire