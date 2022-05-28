scoreboard players set @s set 0
scoreboard players enable @a set

execute store result score @s s.x run data get entity @s Pos[0]
execute store result score @s s.y run data get entity @s Pos[1]
execute store result score @s s.z run data get entity @s Pos[2]

execute if data entity @s {Dimension:"minecraft:the_nether"} run scoreboard players set @s s.dimension -1
execute if data entity @s {Dimension:"minecraft:overworld"} run scoreboard players set @s s.dimension 0
execute if data entity @s {Dimension:"minecraft:the_end"} run scoreboard players set @s s.dimension 1

tellraw @s "\u00a7b提示> \u00a7e傳送點設置完畢"