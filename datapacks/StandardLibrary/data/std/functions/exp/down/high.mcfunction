scoreboard players operation @s p.exp.tmp = @s p.level
scoreboard players remove @s p.exp.tmp 1

scoreboard players operation @s p.exp.tmp *= #9 std.const
scoreboard players remove @s p.exp.tmp 158