function dd:rng
scoreboard players operation @s entity.transformation.x = @s dd.rng
execute store result entity @s transformation.translation[0] float 0.01 run scoreboard players get @s entity.transformation.x

function dd:rng
scoreboard players operation @s entity.transformation.y = @s dd.rng
execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get @s entity.transformation.y

function dd:rng
scoreboard players operation @s entity.transformation.z = @s dd.rng
execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players get @s entity.transformation.z