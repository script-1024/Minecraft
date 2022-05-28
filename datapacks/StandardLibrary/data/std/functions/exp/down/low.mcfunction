scoreboard players operation @s p.exp.tmp = @s p.level
scoreboard players remove @s p.exp.tmp 1

scoreboard players operation @s p.exp.tmp *= #2 std.const
scoreboard players add @s p.exp.tmp 7