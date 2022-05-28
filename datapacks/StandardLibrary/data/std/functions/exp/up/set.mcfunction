execute if score @s p.level matches 0..15 run function std:exp/up/low
execute if score @s p.level matches 16..30 run function std:exp/up/middle
execute if score @s p.level matches 31.. run function std:exp/up/high

scoreboard players operation @s p.exp.tmp -= @s p.xp

execute if score @s p.exp >= @s p.exp.tmp run function std:exp/carry
execute if score @s p.exp < @s p.exp.tmp run scoreboard players operation @s p.xp += @s p.exp
execute if score @s p.exp < @s p.exp.tmp run scoreboard players set @s p.exp 0