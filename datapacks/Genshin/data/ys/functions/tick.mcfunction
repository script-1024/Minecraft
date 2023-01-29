#alias entity char @e[limit=1,sort=nearest,tag=char]

execute as @a if score @s char matches 0.. run function ys:switch_characters/trigger
execute as @a[tag=!ys] if score @s ys.char matches 1.. run function ys:msg/new_character
execute as @a[tag=ys] unless score @s ys.hotbar matches 0.. run scoreboard players set @s ys.hotbar 0
execute as @a[tag=ys] at @s run function ys:main

scoreboard players enable @a gm
scoreboard players enable @a char
scoreboard players enable @a ys.idBook
execute as @a store result score @s ys.slot run data get entity @s SelectedItemSlot

execute as @a if score @s ys.idBook matches 1.. run function ys:get_book

execute as @a at @s run function ys:switch_characters/set

kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

execute as @e[tag=h0] at @s run tp @s @p
execute as @e[tag=h0] at @s unless score @p ys.hotbar matches 0 run kill @s
execute as @e[tag=h1] at @s run tp @s @p
execute as @e[tag=h1] at @s unless score @p ys.hotbar matches 1 run kill @s

execute as @e[tag=char] unless score @p[distance=..16] ys.uid = @s ys.uid run kill @s

execute as @a[tag=!ys] unless score @s ys.char matches 1.. run clear @s carrot_on_a_stick{ys:1}

execute as @a at @s run function ys:wasd/get


# 阻止玩家獲得非法物品
clear @a paper{cl:1}
clear @a minecart{display:{Name:'{"text":"§e點擊§b這裡§e控制人物"}'}}
clear @a minecart{display:{Name:'{"text":"§e点击§b这里§e控制人物"}'}}
# ---



# 提醒玩家乘坐礦車來控制人偶
execute as @e[tag=m] run data modify entity @s CustomName set from storage ys:lang entity.name.m
execute as @e[tag=m] at @s store success entity @s CustomNameVisible byte 1 unless data entity @p RootVehicle
execute as @e[tag=m] at @s if data entity @s {CustomNameVisible:1b} run particle dust 0 1 1 1 ~ ~0.2 ~ 0.2 0.2 0.2 1 12 force
# ---



# 礦車跟隨
execute as @e[tag=char] at @s unless data entity @e[limit=1,sort=nearest,tag=m] {CustomNameVisible:1b} run tp @e[limit=1,tag=m,sort=nearest] ~ ~0.4 ~
execute as @e[tag=char] at @s if data entity @e[limit=1,sort=nearest,tag=m] {CustomNameVisible:1b} run tp @e[limit=1,tag=m,sort=nearest] ~ ~1 ~
# ---



# 重置人偶位置
execute as @e[tag=char] at @s unless entity @a[tag=ys,distance=..8] run kill @s
execute as @e[tag=char] at @s unless entity @e[tag=m,distance=..2] run kill @s
execute as @e[tag=m] at @s unless entity @a[tag=ys,distance=..8] run kill @s
# ---



# 玩家跳躍
clear @a carrot_on_a_stick{sp:1}
execute as @a[tag=!ys] unless data entity @s SelectedItem.id if data storage ys:lang {set:"繁體中文"} run item replace entity @s weapon with carrot_on_a_stick{ys:1,sp:1,CustomModelData:1,display:{Name:'"§f按鍵偵測"'}}
execute as @a[tag=!ys] unless data entity @s SelectedItem.id if data storage ys:lang {set:"简体中文"} run item replace entity @s weapon with carrot_on_a_stick{ys:1,sp:1,CustomModelData:1,display:{Name:'"§f按键检测"'}}
execute as @a at @s if score @s ys.jump matches 1.. run function ys:jump
execute as @a unless score @s ys.cd.jump matches 1.. unless data entity @s RootVehicle run effect clear @s levitation
# ---


# 重力
execute as @a at @s unless score @s gm matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:0b} unless entity @s[tag=climb] if score @s ys.dy matches -2450.. run scoreboard players remove @s ys.dy 50
execute as @a at @s unless score @s gm matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:0b} if entity @s[tag=climb] if score @s ys.dy matches 1.. run scoreboard players remove @s ys.dy 1
execute as @a at @s unless score @s gm matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:1b} if score @s ys.dy matches ..-101 run scoreboard players set @s ys.dy -100