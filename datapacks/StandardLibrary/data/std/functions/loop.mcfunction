# 初始化
execute as @a unless score @s p.expSync matches 0..1 run scoreboard players set @s p.expSync 1
execute as @a unless score @s p.expInit matches 1 run function std:exp/init
execute as @a unless score @s p.xp matches -2147483648..2147483647 run scoreboard players set @s p.xp 0
execute as @a unless score @s p.exp matches -2147483648..2147483647 run scoreboard players set @s p.exp 0
execute as @a unless score @s p.level matches -2147483648..2147483647 run scoreboard players set @s p.level 0
execute as @a unless score @s p.actionbar matches -2147483648..2147483647 run scoreboard players set @s p.actionbar 0
execute as @a unless score @s p.actionbarPrev matches -2147483648..2147483647 run scoreboard players set @s p.actionbarPrev 0

# 維度
execute as @a at @s if data entity @s {Dimension:"minecraft:the_nether"} run scoreboard players set @s p.dimension -1
execute as @a at @s if data entity @s {Dimension:"minecraft:overworld"} run scoreboard players set @s p.dimension 0
execute as @a at @s if data entity @s {Dimension:"minecraft:the_end"} run scoreboard players set @s p.dimension 1

# 經驗值
execute as @a if score @s p.expInit matches 1 if score @s p.expSync matches 1 unless score @s p.xp = @s p.xpNow run function std:exp/sync/xp
execute as @a if score @s p.expInit matches 1 if score @s p.expSync matches 1 unless score @s p.level = @s p.levelNow run function std:exp/sync/level

#潛行
execute as @a at @s unless score @s p.sneak matches 0 positioned ~ ~2 ~ if entity @s[dy=-0.3] run scoreboard players set @s p.sneak 0

# 再次執行
schedule function std:loop 5t