execute store result score #bc ht.tag run scoreboard players get #voted ht.tag
tellraw @a [{"translate":"已有§a(%s§a/%s§a)§r位玩家完成投票","color":"dark_green","with":[{"score":{"name":"#voted","objective":"ht.tag"},"color":"green"},{"score":{"name":"#total","objective":"ht.tag"},"color":"green"}]}]

execute if score #voted ht.tag = #total ht.tag run function ht:game/new