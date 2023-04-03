scoreboard players add @s timer.frozen 20
scoreboard players remove @s element.frozen 800

execute if score @s element.frozen matches 1.. run function ys:entity/element/parse/quant/frozen-2