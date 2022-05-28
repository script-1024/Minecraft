scoreboard players set @s tp 0
scoreboard players enable @a tp

scoreboard players operation @s tp.x = @s s.x
scoreboard players operation @s tp.y = @s s.y
scoreboard players operation @s tp.z = @s s.z

execute at @s if score @s s.dimension matches -1 in the_nether run tp 0 1000 0
execute at @s if score @s s.dimension matches 0 in overworld run tp 0 1000 0
execute at @s if score @s s.dimension matches 1 in the_end run tp 0 1000 0

function tp:tp