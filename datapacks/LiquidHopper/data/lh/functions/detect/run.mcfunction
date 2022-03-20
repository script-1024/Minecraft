execute unless entity @s[distance=..6] run tag @s remove lh.wait

particle dust 0.125 0.5 1 0.25 ~ ~ ~ 0 0 0 0 0 force

execute unless score @s lh.cd matches 1.. if block ~ ~ ~ hopper run function lh:summon
execute if block ~ ~ ~ hopper run scoreboard players set @s lh.cd 5

execute if entity @s[distance=..6] unless block ~ ~ ~ hopper run execute positioned ^ ^ ^0.1 run function lh:detect/run