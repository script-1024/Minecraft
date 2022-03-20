tag @s add lh.wait

#檢測容錯
execute if entity @s[distance=..6] unless block ~ ~ ~ hopper run execute positioned ^-0.02 ^ ^0.1 run function lh:detect/run

execute if entity @s[distance=..6] unless block ~ ~ ~ hopper run execute positioned ^ ^ ^0.2 run function lh:detect/run

execute if entity @s[distance=..6] unless block ~ ~ ~ hopper run execute positioned ^0.02 ^ ^0.1 run function lh:detect/run