execute store success score @s ys.state.walking if score @s ys.state.walking matches 0

scoreboard players set @s ys.used 0
scoreboard players set @s ys.hotbar 0
item replace entity @s weapon.offhand with air

execute if score @s ys.state.walking matches 0 run tellraw @s ["\n",{"nbt":"msg.tip.prefix","storage":"ys:lang"},{"nbt":"msg.tip.change.state.walk","storage":"ys:lang"},"\n"]
execute if score @s ys.state.walking matches 1 run tellraw @s ["\n",{"nbt":"msg.tip.prefix","storage":"ys:lang"},{"nbt":"msg.tip.change.state.run","storage":"ys:lang"},"\n"]