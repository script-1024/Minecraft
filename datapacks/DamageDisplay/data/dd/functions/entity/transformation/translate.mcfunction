function dd:rng
scoreboard players operation @s entity.tf.x = @s dd.rng
execute store result entity @s transformation.translation[0] float 0.01 run scoreboard players get @s entity.tf.x

function dd:rng
scoreboard players operation @s entity.tf.y = @s dd.rng
execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get @s entity.tf.y

function dd:rng
scoreboard players operation @s entity.tf.z = @s dd.rng
execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players get @s entity.tf.z