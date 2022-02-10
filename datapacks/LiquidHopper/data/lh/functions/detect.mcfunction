tag @s add lh.wait

execute unless entity @s[distance=..6] run tag @s remove lh.wait

particle dust 0 0.4 1 0.125 ~ ~ ~ 0 0 0 0 0 force

execute if block ~ ~ ~ hopper run function lh:main

execute if entity @s[distance=..6] unless block ~ ~ ~ hopper run execute positioned ^ ^ ^0.25 run function lh:detect