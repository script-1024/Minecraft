scoreboard players operation @s p.xp.tmp = @s p.level
scoreboard players remove @s p.xp.tmp 1

scoreboard players operation @s p.xp.tmp *= #2 std.const
scoreboard players add @s p.xp.tmp 7