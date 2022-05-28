scoreboard players set @s p.expInit 1

execute store result score @s p.xpNow run xp query @s points
execute store result score @s p.levelNow run xp query @s levels

scoreboard players operation @s p.xp = @s p.xpNow
scoreboard players operation @s p.level = @s p.levelNow