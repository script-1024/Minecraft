scoreboard players operation @s p.xp.tmp = @s p.xp
scoreboard players operation @s p.xp.tmp -= @s p.xpNow

execute if score @s p.xp.tmp matches 1000.. run xp add @s 1000 points
execute if score @s p.xp.tmp matches 100..999 run xp add @s 100 points
execute if score @s p.xp.tmp matches 10..99 run xp add @s 10 points
execute if score @s p.xp.tmp matches 1..9 run xp add @s 1 points

execute if score @s p.xp.tmp matches -9..-1 run xp add @s -1 points
execute if score @s p.xp.tmp matches -99..-10 run xp add @s -10 points
execute if score @s p.xp.tmp matches -999..-100 run xp add @s -100 points
execute if score @s p.xp.tmp matches ..-1000 run xp add @s -1000 points

execute store result score @s p.xpNow run xp query @s points