tag @s add hurt
execute store result score @s dd.nowHealth run data get entity @s Health
execute store result score @s dd.nowDamge run scoreboard players operation @s dd.preHealth -= @s dd.nowHealth
execute store result score @s dd.preDamge unless score @s dd.nowDamge matches 0 run scoreboard players get @s dd.nowDamge
execute unless entity @e[tag=dd,distance=..5] anchored eyes run summon armor_stand ^ ^0.5 ^ {Invisible:1b,Marker:1b,CustomName:' "0" ',CustomNameVisible:1b,Tags:[dd]}
execute as @e[tag=dd,limit=1,sort=nearest] run function dd:set