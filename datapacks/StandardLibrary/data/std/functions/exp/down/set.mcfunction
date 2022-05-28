scoreboard players operation @s p.exp *= #-1 std.const
execute if score @s p.exp > @s p.xp run function std:exp/retreat

execute if score @s p.level matches 0..16 run function std:exp/down/low
execute if score @s p.level matches 17..31 run function std:exp/down/middle
execute if score @s p.level matches 32.. run function std:exp/down/high



execute if score @s p.exp <= @s p.exp.tmp run function std:exp/retreat
execute if score @s p.exp > @s p.exp.tmp run scoreboard players operation @s p.xp += @s p.exp
execute if score @s p.exp > @s p.exp.tmp run scoreboard players set @s p.exp 0