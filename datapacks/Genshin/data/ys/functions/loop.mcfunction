scoreboard players enable @a info
execute as @a if score @s info matches 1.. run function ys:get_info
kill @e[type=item,nbt={Item:{tag:{kill:1b}}}]

execute as @a store result score @s ys.slot run data get entity @s SelectedItemSlot

execute as @a[gamemode=!creative,gamemode=!spectator] unless data entity @s Inventory[{Slot:7b,id:"minecraft:map"}] run tag @s add noSkill
execute as @a[gamemode=!creative,gamemode=!spectator] unless data entity @s Inventory[{Slot:8b,id:"minecraft:map"}] run tag @s add noBurst

execute as @a if entity @s[tag=noSkill] run tag @s add noMap
execute as @a if entity @s[tag=noBurst] run tag @s add noMap

execute as @a[gamemode=creative] if score @s ys.slot matches 7 if data entity @s Inventory[{id:"minecraft:filled_map"}] run tag @s add noSkill
execute as @a[gamemode=creative] if score @s ys.slot matches 8 if data entity @s Inventory[{id:"minecraft:filled_map"}] run tag @s add noBurst

execute as @a[gamemode=creative] if score @s ys.role matches 1..799 unless data entity @s Inventory[{id:"minecraft:map"}] run tag @s add noMap
clear @a[tag=noMap] minecraft:filled_map
#execute as @a[tag=noMap,gamemode=creative] run function ys:no_map

execute as @a unless score @s ys.role matches -1..799 run tellraw @s "\u00a7c錯誤> \u00a7e無效的角色代碼"
execute as @a unless score @s ys.role matches -1..799 run scoreboard players set @s ys.role 0
execute as @a if score @s ys.role matches -1 run function ys:select

execute as @a if score @s ys.skillCd matches 2.. run item replace entity @s hotbar.7 with paper{display:{Name:' "\\u00a7c元素戰技: 冷卻中" '},kill:1b}
execute as @a if score @s ys.burstCd matches 2.. run item replace entity @s hotbar.8 with paper{display:{Name:' "\\u00a7c元素爆發: 冷卻中" '},kill:1b}

kill @e[scores={ys.efc=..-1}]
execute as @e[tag=ys_hurt] unless entity @e[tag=efc,distance=..5] run tag @s remove ys_hurt
#萬葉
execute as @a at @s if score @s ys.role matches 305 run function ys:kazuha/main