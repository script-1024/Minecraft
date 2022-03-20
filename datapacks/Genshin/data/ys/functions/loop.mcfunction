scoreboard players enable @a info
execute as @a if score @s info matches 1.. run function ys:get_info
kill @e[type=item,nbt={Item:{tag:{kill:1b}}}]
execute as @a[tag=!skill] run scoreboard players set @s sec 0

execute as @a[gamemode=!creative,gamemode=!spectator] unless data entity @s Inventory[{Slot:7b,id:"minecraft:map"}] run tag @s add noMap
execute as @a[gamemode=creative] if data entity @s Inventory[{id:"minecraft:filled_map"}] run tag @s add noMap
execute as @a[gamemode=creative] if score @s ys.role matches 1..799 unless data entity @s Inventory[{id:"minecraft:map"}] run tag @s add noMap
clear @a[tag=noMap] minecraft:filled_map
execute as @a[tag=noMap,tag=!skill] run function ys:no_map

execute as @a unless score @s ys.role matches -1..799 run tellraw @s "\u00a7c錯誤> \u00a7e無效的角色代碼"
execute as @a unless score @s ys.role matches -1..799 run scoreboard players set @s ys.role 0
execute as @a if score @s ys.role matches -1 run function ys:select