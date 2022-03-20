scoreboard players set @s lh.protect 20

execute if score debug lh.settings matches 1 run tellraw @a ["\u00a7e初始位置: ",{"nbt":"Pos","entity":"@s"}]

execute store result score @s lh.x run data get entity @s Pos[0] 10
execute store result score @s lh.y run data get entity @s Pos[1] 1000
execute store result score @s lh.z run data get entity @s Pos[2] 10

execute if score debug lh.settings matches 1 run tellraw @a [{"score":{"name":"@s","objective":"lh.x"}},{"text":"  "},{"score":{"name":"@s","objective":"lh.y"}},{"text":"  "},{"score":{"name":"@s","objective":"lh.z"}}]

scoreboard players operation @s lh.tmp = @s lh.x

execute if score @s lh.x matches ..0 run scoreboard players operation @s lh.tmp *= #-1 lh.const
scoreboard players operation @s lh.tmp %= #10 lh.const

execute if score @s lh.x matches 0.. run scoreboard players operation @s lh.x += #5 lh.const
execute if score @s lh.x matches ..0 run scoreboard players operation @s lh.x -= #5 lh.const

execute if score @s lh.x matches 0.. run scoreboard players operation @s lh.x -= @s lh.tmp
execute if score @s lh.x matches ..0 run scoreboard players operation @s lh.x += @s lh.tmp

scoreboard players operation @s lh.y += y lh.settings

scoreboard players operation @s lh.tmp = @s lh.z

execute if score @s lh.z matches ..0 run scoreboard players operation @s lh.tmp *= #-1 lh.const
scoreboard players operation @s lh.tmp %= #10 lh.const

execute if score @s lh.z matches 0.. run scoreboard players operation @s lh.z += #5 lh.const
execute if score @s lh.z matches ..0 run scoreboard players operation @s lh.z -= #5 lh.const

execute if score @s lh.z matches 0.. run scoreboard players operation @s lh.z -= @s lh.tmp
execute if score @s lh.z matches ..0 run scoreboard players operation @s lh.z += @s lh.tmp

execute if score debug lh.settings matches 1 run tellraw @a [{"score":{"name":"@s","objective":"lh.x"}},{"text":"  "},{"score":{"name":"@s","objective":"lh.y"}},{"text":"  "},{"score":{"name":"@s","objective":"lh.z"}}]

execute store result entity @s Pos[0] double 0.1 run scoreboard players get @s lh.x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s lh.y
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @s lh.z

execute if score debug lh.settings matches 1 run tellraw @a {"nbt":"Pos","entity":"@s"}