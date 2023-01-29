tellraw @s ["\n",{"nbt":"msg.tip.prefix","storage":"ys:lang"},{"nbt":"msg.tip.remove[0]","storage":"ys:lang"},"\n\n        §7/trigger §bchar §7set ",{"nbt":"msg.tip.remove[1]","storage":"ys:lang","clickEvent":{"action":"suggest_command","value":"/trigger ys.idBook"},"hoverEvent":{"action":"show_text","contents":{"nbt":"msg.tip.remove[2]","storage":"ys:lang","extra":["\n§7/trigger §bys.idBook"]}}}]
execute if score @s ys.p matches 1 run scoreboard players reset @s ys.p1
execute if score @s ys.p matches 2 run scoreboard players reset @s ys.p2
execute if score @s ys.p matches 3 run scoreboard players reset @s ys.p3
execute if score @s ys.p matches 4 run scoreboard players reset @s ys.p4
execute unless score @s ys.p1 matches 1.. unless score @s ys.p2 matches 1.. unless score @s ys.p3 matches 1.. unless score @s ys.p4 matches 1.. run function ys:reset