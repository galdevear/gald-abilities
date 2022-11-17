##
 # breath-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

particle dragon_breath ^ ^-0.22 ^1 0 0 0 0.01 7
summon area_effect_cloud ^ ^-0.25 ^3 {Particle:"dragon_breath",ReapplicationDelay:100,Radius:0.5f,RadiusPerTick:0.020f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:10,Potion:"minecraft:harming"}