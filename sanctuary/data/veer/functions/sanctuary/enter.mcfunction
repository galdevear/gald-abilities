##
 # enter_sanctuary.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#declare team no_pvp

title @s actionbar "You have entered a no-pvp zone"

# effect give @s invisibility 999999 0 true
team join no_pvp @s
advancement revoke @s only veer:sanctuary/leave