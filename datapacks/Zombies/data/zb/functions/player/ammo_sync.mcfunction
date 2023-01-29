# 刷新經驗條
# call | player/main

#execute if score @s player.wp_1.am.total matches ..-1 run scoreboard players set @s player.wp_1.am.total 0
#execute if score @s player.wp_2.am.total matches ..-1 run scoreboard players set @s player.wp_2.am.total 0

execute if score @s player.select matches 1 if score @s player.wp_1.id matches 1.. store result score @s player.am run scoreboard players get @s player.wp_1.am.total
execute if score @s player.select matches 2 if score @s player.wp_2.id matches 1.. store result score @s player.am run scoreboard players get @s player.wp_2.am.total

scoreboard players operation @s player.am.tmp = @s player.am
scoreboard players operation @s player.am.tmp -= @s player.am.query

execute if score @s player.am.tmp matches 1000000.. run xp add @s 1000000 levels
execute if score @s player.am.tmp matches 100000..999999 run xp add @s 100000 levels
execute if score @s player.am.tmp matches 10000..99999 run xp add @s 10000 levels
execute if score @s player.am.tmp matches 1000..9999 run xp add @s 1000 levels
execute if score @s player.am.tmp matches 100..999 run xp add @s 100 levels
execute if score @s player.am.tmp matches 10..99 run xp add @s 10 levels
execute if score @s player.am.tmp matches 1..9 run xp add @s 1 levels

execute if score @s player.am.tmp matches -9..-1 run xp add @s -1 levels
execute if score @s player.am.tmp matches -99..-10 run xp add @s -10 levels
execute if score @s player.am.tmp matches -999..-100 run xp add @s -100 levels
execute if score @s player.am.tmp matches -9999..-1000 run xp add @s -1000 levels
execute if score @s player.am.tmp matches -99999..-10000 run xp add @s -10000 levels
execute if score @s player.am.tmp matches -999999..-100000 run xp add @s -100000 levels
execute if score @s player.am.tmp matches ..-1000000 run xp add @s -1000000 levels

execute store result score @s player.am.query run xp query @s levels