##
 # enter_sanctuary.mcfunction
 #
 #
 # Created by Galdeveer.
##

title @s actionbar "You are leaving the no-pvp zone"

# execute if entity @s[team=no_pvp] run effect clear @s invisibility
execute if entity @s[team=no_pvp] run team leave @s

# Switch back to original team
function #veer:sanctuary/return_to_team

advancement revoke @s only veer:sanctuary/enter
