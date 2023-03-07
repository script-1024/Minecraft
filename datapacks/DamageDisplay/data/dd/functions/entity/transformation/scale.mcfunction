execute store result entity @s transformation.scale[0] float 0.1 run scoreboard players get @s entity.tf.scale
execute store result entity @s transformation.scale[1] float 0.1 run scoreboard players get @s entity.tf.scale
execute store result entity @s transformation.scale[2] float 0.1 run scoreboard players get @s entity.tf.scale

scoreboard players operation @s entity.tf.scale.prev = @s entity.tf.scale