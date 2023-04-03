item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

execute unless score @s player.cd.atk matches 1.. if data entity @s SelectedItem{id:"minecraft:red_wool"} anchored eyes positioned ^ ^ ^1.5 run function ys:entity/player/catalyst/tracking/pyro
execute unless score @s player.cd.atk matches 1.. if data entity @s SelectedItem{id:"minecraft:white_wool"} anchored eyes positioned ^ ^ ^1.5 run function ys:entity/player/catalyst/tracking/cryo
execute unless score @s player.cd.atk matches 1.. if data entity @s SelectedItem{id:"minecraft:purple_wool"} anchored eyes positioned ^ ^ ^1.5 run function ys:entity/player/catalyst/tracking/electro
execute unless score @s player.cd.atk matches 1.. if data entity @s SelectedItem{id:"minecraft:blue_wool"} anchored eyes positioned ^ ^ ^1.5 run function ys:entity/player/catalyst/tracking/hydro