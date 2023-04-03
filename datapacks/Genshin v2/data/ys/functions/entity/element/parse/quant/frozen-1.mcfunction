scoreboard players operation @s element.frozen = @s element.cryo
execute if score @s element.frozen > @s element.hydro run scoreboard players operation @s element.frozen = @s element.hydro
scoreboard players operation @s element.cryo -= @s element.frozen
scoreboard players operation @s element.hydro -= @s element.frozen

execute if score @s element.frozen matches 1.. run function ys:entity/element/parse/quant/frozen-2