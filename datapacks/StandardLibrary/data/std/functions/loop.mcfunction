# 初始化
execute as @a unless score @s p.expSync matches 0..1 run scoreboard players set @s p.expSync 1
execute as @a unless score @s p.expInit matches 1 run function std:exp/init

execute as @a unless score @s p.xp matches -2147483648..2147483647 run scoreboard players set @s p.xp 0
execute as @a unless score @s p.exp matches -2147483648..2147483647 run scoreboard players set @s p.exp 0
execute as @a unless score @s p.level matches -2147483648..2147483647 run scoreboard players set @s p.level 0

execute as @a unless score @s p.actionbar matches -2147483648..2147483647 run scoreboard players set @s p.actionbar 0
execute as @a unless score @s p.actionbarPrev matches -2147483648..2147483647 run scoreboard players set @s p.actionbarPrev 0

# 啟用觸發器
scoreboard players enable @a here
execute as @a at @s if score @s here matches 1.. run function std:here

# 座標
execute as @a store result score @s p.x run data get entity @s Pos[0]
execute as @a store result score @s p.y run data get entity @s Pos[1]
execute as @a store result score @s p.z run data get entity @s Pos[2]
execute as @a at @s if data entity @s {Dimension:"minecraft:the_nether"} run scoreboard players set @s p.dimension -1
execute as @a at @s if data entity @s {Dimension:"minecraft:overworld"} run scoreboard players set @s p.dimension 0
execute as @a at @s if data entity @s {Dimension:"minecraft:the_end"} run scoreboard players set @s p.dimension 1

# 經驗值
execute as @a if score @s p.xp matches ..-1 run scoreboard players set @s p.xp 0
execute as @a if score @s p.level matches ..-1 run scoreboard players set @s p.level 0
execute as @a if score @s p.expInit matches 1 if score @s p.expSync matches 1 unless score @s p.xp = @s p.xpNow run function std:exp/sync
execute as @a if score @s p.expInit matches 1 if score @s p.expSync matches 1 unless score @s p.level = @s p.levelNow run function std:exp/sync
execute as @a unless score @s p.exp matches 0 run function std:exp/give
execute as @a store success score @s p.expSync if score @s p.exp matches 0

execute as @a at @s unless score @s p.sneak matches 0 positioned ~ ~2 ~ if entity @s[dy=-0.3] run scoreboard players set @s p.sneak 0