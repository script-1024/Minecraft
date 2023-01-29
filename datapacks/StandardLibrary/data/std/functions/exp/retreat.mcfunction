scoreboard players operation @s p.exp += @s p.xp
scoreboard players operation @s p.xp = @s p.xp.tmp
execute if score @s p.level matches 1.. run scoreboard players remove @s p.level 1