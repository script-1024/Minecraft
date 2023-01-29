scoreboard players operation @s p.level.tmp = @s p.level
scoreboard players operation @s p.level.tmp -= @s p.levelNow

execute if score @s p.level.tmp matches 1000000.. run xp add @s 1000000 levels
execute if score @s p.level.tmp matches 100000..999999 run xp add @s 100000 levels
execute if score @s p.level.tmp matches 10000..99999 run xp add @s 10000 levels
execute if score @s p.level.tmp matches 1000..9999 run xp add @s 1000 levels
execute if score @s p.level.tmp matches 100..999 run xp add @s 100 levels
execute if score @s p.level.tmp matches 10..99 run xp add @s 10 levels
execute if score @s p.level.tmp matches 1..9 run xp add @s 1 levels

execute if score @s p.level.tmp matches -9..-1 run xp add @s -1 levels
execute if score @s p.level.tmp matches -99..-10 run xp add @s -10 levels
execute if score @s p.level.tmp matches -999..-100 run xp add @s -100 levels
execute if score @s p.level.tmp matches -9999..-1000 run xp add @s -1000 levels
execute if score @s p.level.tmp matches -99999..-10000 run xp add @s -10000 levels
execute if score @s p.level.tmp matches -999999..-100000 run xp add @s -100000 levels
execute if score @s p.level.tmp matches ..-1000000 run xp add @s -1000000 levels

execute store result score @s p.levelNow run xp query @s levels