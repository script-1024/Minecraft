tag @s add ask
tellraw @p ["\n",{"storage":"dun:lang","nbt":"msg.tips.prefix"},{"storage":"dun:lang","nbt":"msg.tips.next"},{"storage":"dun:lang","nbt":"btn.confirm","interpret":true},{"storage":"dun:lang","nbt":"btn.cancel","interpret":true}]
scoreboard players enable @p confirm
scoreboard players enable @p cancel

scoreboard players set @s cd.ask 10