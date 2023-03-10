execute unless score @s counter.attach matches 0..2 run scoreboard players set @s counter.attach 0

execute unless score @s element.state matches 1.. run scoreboard players set @s element.state 15

execute if score @s element.state matches 15 if score @s counter.attach matches 0 run scoreboard players set @s element.electro 120
execute unless score @s element.state matches 15 run scoreboard players set @s element.electro 120

execute if score @s element.state matches 15 on passengers run scoreboard players set @s timer.icon 120

function ys:entity/element/get/electro/set