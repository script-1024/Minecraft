execute unless score @s counter.aura matches 0..2 run scoreboard players set @s counter.aura 0

execute unless score @s element.state matches 1.. run scoreboard players set @s element.state 63

execute if score @s element.state matches 63 if score @s counter.aura matches 0 run scoreboard players set @s element.cryo 1600
execute if score @s element.state matches 63 if score @s counter.aura matches 0 run scoreboard players set @s element.decay 13
execute unless score @s element.state matches 63 run scoreboard players set @s element.cryo 1600

execute if score @s element.state matches 63 on passengers run scoreboard players set @s timer.icon 123

function ys:entity/element/get/cryo/set