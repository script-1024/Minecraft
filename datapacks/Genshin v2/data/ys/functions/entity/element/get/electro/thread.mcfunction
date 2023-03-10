execute if score @s element.electro matches ..40 if score @s element.state matches 15 on passengers if score @s entity.tf.scale matches 10 run tag @s add dp
execute if score @s element.electro matches 0 if score @s element.state matches 15 run scoreboard players set @s element.state 0
execute if score @s element.electro matches 0 run scoreboard players set @s element.electro -1