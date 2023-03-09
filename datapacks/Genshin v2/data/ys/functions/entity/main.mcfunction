execute if entity @s run function ys:entity/element/check
execute if entity @s[tag=!txt,tag=!data,type=!player,type=!#ys:non-living] run function ys:entity/element/display
execute if entity @s[type=player] run function ys:entity/player/main
execute if entity @s[tag=icon] run function ys:entity/icon

execute unless score @s element.anemo matches 1.. unless score @s element.cryo matches 1.. unless score @s element.dendro matches 1.. unless score @s element.electro matches 1.. unless score @s element.geo matches 1.. unless score @s element.hydro matches 1.. unless score @s element.pyro matches 1.. run scoreboard players set @s element.state 0