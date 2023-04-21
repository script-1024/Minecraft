execute store result score @s player.select run data get entity @s SelectedItemSlot
execute unless score @s player.select.prev = @s player.select run function ys:entity/player/input/scroll