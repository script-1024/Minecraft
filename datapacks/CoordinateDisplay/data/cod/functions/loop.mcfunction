# 初始化
execute as @a unless score @s p.actionbar matches -2147483648..2147483647 run scoreboard players set @s p.actionbar 0
execute as @a unless score @s p.actionbarPrev matches -2147483648..2147483647 run scoreboard players set @s p.actionbarPrev 0

# 維度
execute as @a if data entity @s {Dimension:"minecraft:the_nether"} run scoreboard players set @s p.dimension -1
execute as @a if data entity @s {Dimension:"minecraft:overworld"} run scoreboard players set @s p.dimension 0
execute as @a if data entity @s {Dimension:"minecraft:the_end"} run scoreboard players set @s p.dimension 1

# 再次執行
schedule function cod:loop 5s