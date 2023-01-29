# 初始化
execute as @a unless score @s actionbar matches 0.. run scoreboard players set @s actionbar 1

# 檢查觸發器
scoreboard players enable @a actionbar
scoreboard players enable @a here
execute as @a at @s if score @s here matches 1.. run function act:here

# 保存維度
execute as @a store result score @s self.dimension run data get entity @s Dimension 1
execute as @a at @s store result score @s last.dimension run data get entity @s LastDeathLocation.dimension 1

# 保存坐標
execute as @a store result score @s self.x run data get entity @s Pos[0] 1
execute as @a store result score @s self.y run data get entity @s Pos[1] 1
execute as @a store result score @s self.z run data get entity @s Pos[2] 1
execute as @a store result score @s last.x run data get entity @s LastDeathLocation.pos[0] 1
execute as @a store result score @s last.y run data get entity @s LastDeathLocation.pos[1] 1
execute as @a store result score @s last.z run data get entity @s LastDeathLocation.pos[2] 1

# 保存朝向
execute as @a store result score @s self.direction run data get entity @s Rotation[0] 1
execute as @a store result score @s self.lookup run data get entity @s Rotation[1] 1
execute as @a run scoreboard players add @s self.direction 180

# 死亡坐標
execute as @a if score @s player.death matches 1.. if score @s self.health matches 1.. run function act:death_msg