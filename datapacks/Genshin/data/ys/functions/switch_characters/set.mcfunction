# 切換角色的相關邏輯
execute unless score @s ys.p matches 1..4 run scoreboard players set @s ys.p 1

#execute if score @s ys.hotbar matches 0 if score @s ys.char matches 1.. unless score @s ys.p1 matches 1.. run scoreboard players operation @s ys.p1 = @s ys.char
#execute if score @s ys.hotbar matches 0 if score @s ys.char matches 1.. unless score @s ys.p2 matches 1.. unless score @s ys.p1 = @s ys.char if score @s ys.p1 matches 1.. run scoreboard players operation @s ys.p2 = @s ys.char
#execute if score @s ys.hotbar matches 0 if score @s ys.char matches 1.. unless score @s ys.p3 matches 1.. unless score @s ys.p2 = @s ys.char if score @s ys.p2 matches 1.. run scoreboard players operation @s ys.p3 = @s ys.char
#execute if score @s ys.hotbar matches 0 if score @s ys.char matches 1.. unless score @s ys.p4 matches 1.. unless score @s ys.p3 = @s ys.char if score @s ys.p3 matches 1.. run scoreboard players operation @s ys.p4 = @s ys.char

#execute if score @s ys.hotbar matches 0 if score @s ys.p1 = @s ys.char run scoreboard players set @s ys.p 1
#execute if score @s ys.hotbar matches 0 if score @s ys.p2 = @s ys.char run scoreboard players set @s ys.p 2
#execute if score @s ys.hotbar matches 0 if score @s ys.p3 = @s ys.char run scoreboard players set @s ys.p 3
#execute if score @s ys.hotbar matches 0 if score @s ys.p4 = @s ys.char run scoreboard players set @s ys.p 4

execute if score @s ys.hotbar matches 1 if score @s ys.slot matches 2 run scoreboard players set @s ys.p 1
execute if score @s ys.hotbar matches 1 if score @s ys.slot matches 3 run scoreboard players set @s ys.p 2
execute if score @s ys.hotbar matches 1 if score @s ys.slot matches 4 run scoreboard players set @s ys.p 3
execute if score @s ys.hotbar matches 1 if score @s ys.slot matches 5 run scoreboard players set @s ys.p 4

#execute if score @s ys.hotbar matches 0 if score @s ys.p matches 1 run scoreboard players operation @s ys.p1 = @s ys.char
#execute if score @s ys.hotbar matches 0 if score @s ys.p matches 2 run scoreboard players operation @s ys.p2 = @s ys.char
#execute if score @s ys.hotbar matches 0 if score @s ys.p matches 3 run scoreboard players operation @s ys.p3 = @s ys.char
#execute if score @s ys.hotbar matches 0 if score @s ys.p matches 4 run scoreboard players operation @s ys.p4 = @s ys.char