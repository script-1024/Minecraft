execute if data entity @s Inventory[{Slot:-106b}].tag.atk run function ys:char/aether/3/attack

execute if score @s ys.slot matches 7 if data entity @s SelectedItem.tag.available run function ys:char/aether/3/skill
execute if score @s ys.slot matches 8 if data entity @s SelectedItem.tag.available run function ys:char/aether/3/burst

execute unless score @s ys.ani matches 3000001..3009999 run scoreboard players set @s ys.ani 3000001
execute if score @s ys.ani.type matches 0 unless score @s ys.ani matches 3000001..3000001 run scoreboard players set @s ys.ani 3000001
execute if score @s ys.ani.type matches 1 unless score @s ys.ani matches 3001001..3001008 run scoreboard players set @s ys.ani 3001001
execute if score @s ys.ani.type matches 2 unless score @s ys.ani matches 3002001..3002012 run scoreboard players set @s ys.ani 3002001
execute if score @s ys.ani.type matches 3 unless score @s ys.ani matches 3003001..3003005 run scoreboard players set @s ys.ani 3003001