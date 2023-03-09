execute unless score @s counter.attach matches 0..2 run scoreboard players set @s counter.attach 0

execute unless score @s element.state matches 1.. run scoreboard players set @s element.state 1

execute if score @s element.state matches 1 if score @s counter.attach matches 0 run scoreboard players set @s element.pyro 95
execute unless score @s element.state matches 1 run scoreboard players set @s element.pyro 95

function ys:entity/element/get/pyro/set