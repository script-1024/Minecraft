# 破壞方塊
# call | player/creative/main
# loop | player/creative/destroy -> 如果 所在的這格方塊 是 空氣 且 不是 非玩家實體 時

execute if score @s player.atk matches 1.. run scoreboard players set @s player.atk 0

execute if data entity @s Inventory[{Slot:-106b}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand

item replace entity @s weapon.offhand with air

particle dust 1 0.8 0 0.2 ~ ~ ~ 0 0 0 0 1 force

execute if block ~ ~ ~ #air unless entity @e[type=!player,dx=0,dy=0,dz=0] if entity @s[distance=..4.5] positioned ^ ^ ^0.2 run function zb:player/creative/destroy

execute if block ~ ~ ~ #air unless block ^-0.01 ^ ^ #air run setblock ^-0.01 ^ ^ air

execute if block ~ ~ ~ #air unless block ^0.01 ^ ^ #air run setblock ^0.01 ^ ^ air

execute if block ~ ~ ~ #air unless block ^ ^-0.01 ^ #air run setblock ^ ^-0.01 ^ air

execute if block ~ ~ ~ #air unless block ^ ^0.01 ^ #air run setblock ^ ^0.01 ^ air

execute unless block ~ ~ ~ #air run setblock ~ ~ ~ air