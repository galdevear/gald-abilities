##
 # reset_scoreboards.mcfunction
 # 
 #
 # Created by Galdeveer.
##

## Scoreboard

#Objectives
#declare objective veer.ga.health
#declare objective veer.ga.nAbils
#declare objective veer.ga.player

#classes
# declare objective coral_golem Trigger1
# declare objective coral_golem.hydrate Trigger2
# declare objective coral_golem.aquatect Trigger3
# declare objective chimender Trigger4
# declare objective chimender.phase Trigger5
# declare objective chimender.teleport Trigger6
# declare objective android Trigger7
# declare objective android.battery Trigger8
# declare objective android.metal_skin Trigger9
# declare objective ground_dragon Trigger10
# declare objective ground_dragon.glide Trigger11
# declare objective ground_dragon.breath Trigger12
# declare objective parasquid Trigger13
# declare objective parasquid.flying_squid Trigger14
# declare objective parasquid.snow_cloud Trigger15
# declare objective spider Trigger16
# declare objective spider.arachnid Trigger17
# declare objective spider.sanity Trigger18
# declare objective squattle Trigger19
# declare objective squattle.camo Trigger20
# declare objective squattle.shell Trigger21
# declare objective undead Trigger

# scoreboard objectives add coral_golem trigger
# scoreboard objectives add coral_golem.hydrate trigger
# scoreboard objectives add coral_golem.aquatect trigger
# scoreboard objectives add chimender trigger
# scoreboard objectives add chimender.phase trigger
# scoreboard objectives add chimender.teleport trigger
# scoreboard objectives add android trigger
# scoreboard objectives add android.battery trigger
# scoreboard objectives add android.metal_skin trigger
# scoreboard objectives add ground_dragon trigger
# scoreboard objectives add ground_dragon.glide trigger
# scoreboard objectives add ground_dragon.breath trigger
# scoreboard objectives add parasquid trigger
# scoreboard objectives add parasquid.flying_squid trigger
# scoreboard objectives add parasquid.snow_cloud trigger
# scoreboard objectives add spider trigger
# scoreboard objectives add spider.arachnid trigger
# scoreboard objectives add spider.sanity trigger
# scoreboard objectives add squattle trigger
# scoreboard objectives add squattle.camo trigger
# scoreboard objectives add squattle.shell trigger

scoreboard objectives add join_class trigger
scoreboard objectives add leave_class trigger

scoreboard objectives add veer.ga.health health "Player Health"
scoreboard objectives add veer.ga.nAbils dummy "Number of Abilities"
scoreboard objectives add veer.ga.player dummy "Player Version Number"

# Objective display

#Score Holders
#declare score_holder $CUR_VER
scoreboard players set $CUR_VER veer.ga.player 1