execute store result score @s ys.health run data get entity @s Health
scoreboard players remove @s ys.health 1
execute store result entity @s Health float 1 run scoreboard players get @s ys.health
effect give @s wither 1 1 true
scoreboard players remove @s ys.damage 1