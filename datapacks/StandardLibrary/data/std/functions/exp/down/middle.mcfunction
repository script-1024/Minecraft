scoreboard players operation @s p.xp.tmp = @s p.level
scoreboard players remove @s p.xp.tmp 1

scoreboard players operation @s p.xp.tmp *= #5 std.const
scoreboard players remove @s p.xp.tmp 38