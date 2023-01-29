scoreboard players set @s ys.used 0
item replace entity @s weapon.offhand with air
item replace entity @s hotbar.2 with air

execute unless score @s ys.p1 matches 1.. run tellraw @a ["\n",{"nbt":"msg.tip.prefix","storage":"ys:lang"},{"nbt":"msg.tip.empty_slot","storage":"ys:lang"}]

execute if score @s ys.p1 matches 1.. run scoreboard players set @s ys.hotbar 0
execute if score @s ys.p1 matches 1.. run scoreboard players set @s ys.p 1
execute if score @s ys.p1 matches 1.. run scoreboard players operation @s ys.char = @s ys.p1
execute if score @s ys.p1 matches 1.. run function ys:msg/new_character