scoreboard players enable @a tp
scoreboard players enable @a set
scoreboard players enable @a back

execute as @a[tag=!wait] run scoreboard players reset tp.timer

execute as @a at @s unless score @s tp.death matches 1.. unless block ~ ~-1 ~ air store result score @s d.x run data get entity @s Pos[0]
execute as @a at @s unless score @s tp.death matches 1.. unless block ~ ~-1 ~ air store result score @s d.y run data get entity @s Pos[1]
execute as @a at @s unless score @s tp.death matches 1.. unless block ~ ~-1 ~ air store result score @s d.z run data get entity @s Pos[2]

execute as @a at @s if data entity @s {Dimension:"minecraft:the_nether"} run scoreboard players set @s d.dimension -1
execute as @a at @s if data entity @s {Dimension:"minecraft:overworld"} run scoreboard players set @s d.dimension 0
execute as @a at @s if data entity @s {Dimension:"minecraft:the_end"} run scoreboard players set @s d.dimension 1

execute as @a at @s if score @s tp.death matches 1.. run tag @s add wait

execute as @a at @s if score @s tp matches 1.. run function tp:main
execute as @a at @s if score @s set matches 1.. run function tp:set
execute as @a at @s if score @s back matches 1.. run function tp:back