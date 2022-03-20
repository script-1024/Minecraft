execute as @a at @s unless score @s lh.cd matches 1.. anchored eyes positioned ^ ^ ^ if score @s lh.placeHopper matches 1.. if entity @s[tag=!lh.wait] run function lh:detect/set

execute as @a if score @s lh.cd matches 1.. run scoreboard players set @s lh.placeHopper 0

execute as @e[tag=lh] at @s run function lh:main

execute unless score protect lh.settings matches 10.. run tellraw @a[gamemode=creative] "\u00a7c警告> \u00a7e盔甲架的保護時間不可少於 \u00a7b1秒"
execute unless score protect lh.settings matches 10.. run scoreboard players set protect lh.settings 20

execute unless score y lh.settings matches -1000..1000 run tellraw @a[gamemode=creative] "\u00a7c警告> \u00a7e盔甲架的高度偏移量不可超過 \u00a7b1格方塊"
execute unless score y lh.settings matches -1000..1000 run scoreboard players set y lh.settings 675