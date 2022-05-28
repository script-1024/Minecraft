scoreboard players operation @s p.level.tmp = @s p.level
scoreboard players operation @s p.level.tmp -= @s p.levelNow
execute if score @s p.level.tmp matches 1.. run xp add @s 1 levels
execute if score @s p.level.tmp matches ..-1 run xp add @s -1 levels

scoreboard players operation @s p.xp.tmp = @s p.xp
scoreboard players operation @s p.xp.tmp -= @s p.xpNow
execute if score @s p.xp.tmp matches 1.. run xp add @s 1 points
execute if score @s p.xp.tmp matches ..-1 run xp add @s -1 points

execute as @a store result score @s p.xpNow run xp query @s points
execute as @a store result score @s p.levelNow run xp query @s levels