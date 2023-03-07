execute if score @s element.pyro matches ..40 on passengers if score @s entity.tf.scale matches 10 run tag @s add dp

execute if score @s element.pyro matches 1.. if score @s element.state matches 1 on passengers run data modify entity @s text set value '{"translate":"element.pyro"}'

execute if score @s element.pyro matches 0 if score @s element.state matches 1 run scoreboard players set @s element.state 0

execute if score @s element.pyro matches 0 if score @s element.state matches 0 on passengers run data modify entity @s text set value ''

execute if score @s element.pyro matches 0 run scoreboard players set @s element.pyro -1