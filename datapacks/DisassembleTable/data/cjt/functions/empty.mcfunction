scoreboard players set @s cjt.empty 0
execute if score @s cjt.empty matches 0 unless data block ~ ~ ~ Items[{Slot:6b}] run scoreboard players set @s cjt.empty 1
execute if score @s cjt.empty matches 0 if data block ~ ~ ~ Items[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:7b}] run scoreboard players set @s cjt.empty 2
execute if score @s cjt.empty matches 0 if data block ~ ~ ~ Items[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:8b}] run scoreboard players set @s cjt.empty 3
execute if score @s cjt.empty matches 0 if data block ~ ~ ~ Items[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:15b}] run scoreboard players set @s cjt.empty 4
execute if score @s cjt.empty matches 0 if data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:16b}] run scoreboard players set @s cjt.empty 5
execute if score @s cjt.empty matches 0 if data block ~ ~ ~ Items[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:17b}] run scoreboard players set @s cjt.empty 6
execute if score @s cjt.empty matches 0 if data block ~ ~ ~ Items[{Slot:17b}] unless data block ~ ~ ~ Items[{Slot:24b}] run scoreboard players set @s cjt.empty 7
execute if score @s cjt.empty matches 0 if data block ~ ~ ~ Items[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:25b}] run scoreboard players set @s cjt.empty 8
execute if score @s cjt.empty matches 0 if data block ~ ~ ~ Items[{Slot:25b}] unless data block ~ ~ ~ Items[{Slot:26b}] run scoreboard players set @s cjt.empty 9

execute if score @s cjt.empty matches 1 run scoreboard players set @s cjt.slot 6
execute if score @s cjt.empty matches 2 run scoreboard players set @s cjt.slot 7
execute if score @s cjt.empty matches 3 run scoreboard players set @s cjt.slot 8
execute if score @s cjt.empty matches 4 run scoreboard players set @s cjt.slot 15
execute if score @s cjt.empty matches 5 run scoreboard players set @s cjt.slot 16
execute if score @s cjt.empty matches 6 run scoreboard players set @s cjt.slot 17
execute if score @s cjt.empty matches 7 run scoreboard players set @s cjt.slot 24
execute if score @s cjt.empty matches 8 run scoreboard players set @s cjt.slot 25
execute if score @s cjt.empty matches 9 run scoreboard players set @s cjt.slot 26