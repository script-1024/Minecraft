# 檢查觸發器
scoreboard players enable @a here
execute as @a at @s if score @s here matches 1.. run function cod:here

# 保存坐標
execute as @a store result score @s p.x run data get entity @s Pos[0]
execute as @a store result score @s p.y run data get entity @s Pos[1]
execute as @a store result score @s p.z run data get entity @s Pos[2]

# 保存朝向
execute as @a store result score @s p.direction run data get entity @s Rotation[0]
execute as @a store result score @s p.lookup run data get entity @s Rotation[1]
execute as @a run scoreboard players add @s p.direction 180

# 指北針模式切換
execute unless score #t cod.sneak matches 1.. run tellraw @a "\u00a7c警告> \u00a76#t \u00a7e的值不能小於1, 系統已將其重設為20"
execute unless score #t cod.sneak matches 1.. run scoreboard players set #t cod.sneak 20
execute as @a if score @s cod.sneak >= #t cod.sneak if score @s p.actionbar matches 0..1 if score @s p.lookup matches 80.. run execute store success score @s p.actionbar if score @s p.actionbar matches 0
execute as @a if score @s cod.sneak >= #t cod.sneak run scoreboard players set @s cod.sneak 0