execute if score kill lh.settings matches 1 unless block ~ ~ ~ hopper run kill @s

execute if entity @s[tag=!new] run data modify entity @s Marker set value 1b


#加入隊伍
execute if block ~ ~1 ~ water run team join lh.water @s
execute if block ~ ~1 ~ water_cauldron run team join lh.water @s

execute if block ~ ~1 ~ lava run team join lh.lava @s
execute if block ~ ~1 ~ lava_cauldron run team join lh.lava @s

execute if entity @s[team=!lh.water,team=!lh.lava] run team join lh.empty @s
execute if entity @s[team=lh.water] unless block ~ ~1 ~ water unless block ~ ~1 ~ water_cauldron run team join lh.empty @s
execute if entity @s[team=lh.lava] unless block ~ ~1 ~ lava unless block ~ ~1 ~ lava_cauldron run team join lh.empty @s


#分類
execute if block ~ ~ ~ hopper[facing=down] if block ~ ~-1 ~ furnace run tag @s add furD
execute if block ~ ~ ~ hopper[facing=down] if block ~ ~-1 ~ smoker run tag @s add furD
execute if block ~ ~ ~ hopper[facing=down] if block ~ ~-1 ~ blast_furnace run tag @s add furD
execute if block ~ ~ ~ hopper[facing=down] unless block ~ ~-1 ~ furnace unless block ~ ~-1 ~ smoker unless block ~ ~-1 ~ blast_furnace run tag @s remove furD

execute if block ~ ~ ~ hopper[facing=east] if block ~1 ~ ~ furnace run tag @s add furE
execute if block ~ ~ ~ hopper[facing=east] if block ~1 ~ ~ smoker run tag @s add furE
execute if block ~ ~ ~ hopper[facing=east] if block ~1 ~ ~ blast_furnace run tag @s add furE
execute if block ~ ~ ~ hopper[facing=east] unless block ~1 ~ ~ furnace unless block ~1 ~ ~ smoker unless block ~1 ~ ~ blast_furnace run tag @s remove furE

execute if block ~ ~ ~ hopper[facing=north] if block ~ ~ ~-1 furnace run tag @s add furN
execute if block ~ ~ ~ hopper[facing=north] if block ~ ~ ~-1 smoker run tag @s add furN
execute if block ~ ~ ~ hopper[facing=north] if block ~ ~ ~-1 blast_furnace run tag @s add furN
execute if block ~ ~ ~ hopper[facing=north] unless block ~ ~ ~-1 furnace unless block ~ ~ ~-1 smoker unless block ~ ~ ~-1 blast_furnace run tag @s remove furN

execute if block ~ ~ ~ hopper[facing=south] if block ~ ~ ~1 furnace run tag @s add furS
execute if block ~ ~ ~ hopper[facing=south] if block ~ ~ ~1 smoker run tag @s add furS
execute if block ~ ~ ~ hopper[facing=south] if block ~ ~ ~1 blast_furnace run tag @s add furS
execute if block ~ ~ ~ hopper[facing=south] unless block ~ ~ ~1 furnace unless block ~ ~ ~1 smoker unless block ~ ~ ~1 blast_furnace run tag @s remove furS

execute if block ~ ~ ~ hopper[facing=west] if block ~-1 ~ ~ furnace run tag @s add furW
execute if block ~ ~ ~ hopper[facing=west] if block ~-1 ~ ~ smoker run tag @s add furW
execute if block ~ ~ ~ hopper[facing=west] if block ~-1 ~ ~ blast_furnace run tag @s add furW
execute if block ~ ~ ~ hopper[facing=west] unless block ~-1 ~ ~ furnace unless block ~-1 ~ ~ smoker unless block ~-1 ~ ~ blast_furnace run tag @s remove furW

execute if entity @s[tag=fur] run tag @s remove noFur
execute if entity @s[tag=!furD] if entity @s[tag=!furE] if entity @s[tag=!furN] if entity @s[tag=!furS] if entity @s[tag=!furW] run tag @s add noFur
execute if entity @s[tag=noFur] run tag @s remove fur
execute if entity @s[tag=!noFur] run tag @s add fur


#分別的效果
execute if entity @s[team=lh.water,tag=furD] run data modify block ~ ~-1 ~ CookTime set value 0
execute if entity @s[team=lh.water,tag=furE] run data modify block ~1 ~ ~ CookTime set value 0
execute if entity @s[team=lh.water,tag=furN] run data modify block ~ ~ ~-1 CookTime set value 0
execute if entity @s[team=lh.water,tag=furS] run data modify block ~ ~ ~1 CookTime set value 0
execute if entity @s[team=lh.water,tag=furW] run data modify block ~-1 ~ ~ CookTime set value 0

execute if entity @s[team=lh.lava,tag=furD] run data modify block ~ ~-1 ~ BurnTime set value 20000
execute if entity @s[team=lh.lava,tag=furE] run data modify block ~1 ~ ~ BurnTime set value 20000
execute if entity @s[team=lh.lava,tag=furN] run data modify block ~ ~ ~-1 BurnTime set value 20000
execute if entity @s[team=lh.lava,tag=furS] run data modify block ~ ~ ~1 BurnTime set value 20000
execute if entity @s[team=lh.lava,tag=furW] run data modify block ~-1 ~ ~ BurnTime set value 20000