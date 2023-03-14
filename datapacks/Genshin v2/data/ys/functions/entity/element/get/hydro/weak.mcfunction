execute unless score @s counter.aura matches 0..2 run scoreboard players set @s counter.aura 0

execute unless score @s element.state matches 1.. run scoreboard players set @s element.state 3

execute if score @s element.state matches 3 if score @s counter.aura matches 0 run scoreboard players set @s element.hydro 800
execute if score @s element.state matches 3 if score @s counter.aura matches 0 run scoreboard players set @s element.decay 8

execute if score @s element.state matches 3 on passengers run scoreboard players set @s timer.icon 95

function ys:entity/element/get/hydro/set