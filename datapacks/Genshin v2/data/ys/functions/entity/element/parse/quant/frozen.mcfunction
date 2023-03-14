execute if score @s element.cryo matches 0.. run scoreboard players add @s timer.frozen 10
scoreboard players operation @s element.cryo -= #800 const

execute if score @s element.cryo matches 0.. run function ys:entity/element/parse/quant/frozen

execute if score @s element.hydro matches 0.. run scoreboard players add @s timer.frozen 10
scoreboard players operation @s element.hydro -= #800 const

execute if score @s element.hydro matches 0.. run function ys:entity/element/parse/quant/frozen