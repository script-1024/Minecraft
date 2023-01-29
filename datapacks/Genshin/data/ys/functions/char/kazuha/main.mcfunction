execute if data entity @s Inventory[{Slot:-106b}].tag.atk run function ys:char/kazuha/attack

execute if score @s ys.slot matches 7 if data entity @s SelectedItem.tag.available run function ys:char/kazuha/skill
execute if score @s ys.slot matches 8 if data entity @s SelectedItem.tag.available run function ys:char/kazuha/burst

execute unless score @s ys.ani matches 3060001..3069999 run scoreboard players set @s ys.ani 3060001
execute if score @s ys.ani.type matches 0 unless score @s ys.ani matches 3060001..3060001 run scoreboard players set @s ys.ani 3060001
execute if score @s ys.ani.type matches 1 unless score @s ys.ani matches 3061001..3061008 run scoreboard players set @s ys.ani 3061001
execute if score @s ys.ani.type matches 2 unless score @s ys.ani matches 3062001..3062012 run scoreboard players set @s ys.ani 3062001
execute if score @s ys.ani.type matches 3 unless score @s ys.ani matches 3063001..3063005 run scoreboard players set @s ys.ani 3063001