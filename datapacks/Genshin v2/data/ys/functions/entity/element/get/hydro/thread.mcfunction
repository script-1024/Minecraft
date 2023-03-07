execute if score @s element.hydro matches ..40 on passengers if score @s entity.tf.scale matches 10 run tag @s add dp

execute if score @s element.hydro matches 1.. if score @s element.state matches 3 on passengers run data modify entity @s text set value '{"translate":"element.hydro"}'

execute if score @s element.hydro matches 0 if score @s element.state matches 3 run scoreboard players set @s element.state 0

execute if score @s element.hydro matches 0 if score @s element.state matches 0 on passengers run data modify entity @s text set value ''

execute if score @s element.hydro matches 0 run scoreboard players set @s element.hydro -1