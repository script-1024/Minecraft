tellraw @s ["\n",{"nbt":"msg.notice.prefix","storage":"ys:lang"},{"nbt":"msg.notice.reset","storage":"ys:lang"}]
tag @s remove ys
scoreboard players reset @s ys.uid
scoreboard players set @s ys.char 0
scoreboard players set @s ys.used 0
scoreboard players set @s ys.hotbar 0
scoreboard players reset @s ys.p
scoreboard players reset @s ys.p1
scoreboard players reset @s ys.p2
scoreboard players reset @s ys.p3
scoreboard players reset @s ys.p4