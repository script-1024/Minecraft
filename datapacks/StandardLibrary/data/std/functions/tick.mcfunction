# 啟用觸發器
scoreboard players enable @a here
execute as @a at @s if score @s here matches 1.. run function std:here

# 坐標
execute as @a store result score @s p.x run data get entity @s Pos[0]
execute as @a store result score @s p.y run data get entity @s Pos[1]
execute as @a store result score @s p.z run data get entity @s Pos[2]

# 經驗值
execute as @a store result score @s p.xpNow run xp query @s points
execute as @a store result score @s p.levelNow run xp query @s levels
execute as @a unless score @s p.exp matches 0 run function std:exp/give