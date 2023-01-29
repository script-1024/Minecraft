execute if score @s p.level matches 0 run scoreboard players set @s p.xp.tmp 0
execute if score @s p.level matches 1..16 run function std:exp/down/low
execute if score @s p.level matches 17..31 run function std:exp/down/middle
execute if score @s p.level matches 32.. run function std:exp/down/high

scoreboard players operation @s p.exp.tmp = @s p.exp
scoreboard players operation @s p.exp.tmp *= #-1 std.const
execute if score @s p.exp.tmp > @s p.xp run function std:exp/retreat
execute if score @s p.exp.tmp <= @s p.xp run scoreboard players operation @s p.xp += @s p.exp
execute if score @s p.exp.tmp <= @s p.xp run scoreboard players set @s p.exp 0