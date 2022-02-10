execute as @a at @s anchored eyes positioned ^ ^ ^ if score @s lh.placeHopper matches 1.. unless entity @s[tag=lh.wait] run function lh:detect

execute if score #kill lh.settings matches 1 as @e[tag=lh,tag=!new] at @s unless block ~ ~ ~ hopper run function lh:no_hopper