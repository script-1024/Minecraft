summon chest_boat ~ ~ ~
data modify entity @e[limit=1,sort=nearest,type=chest_boat] {} merge from entity @e[limit=1,sort=nearest,type=boat] {}
tp @e[type=boat,limit=1,sort=nearest] ~ -500 ~
execute if data entity @s SelectedItem.tag.cb run function cb:chest/nbt
execute unless data entity @s Inventory[].tag.cb if data entity @s SelectedItem{id:"minecraft:chest"} run clear @s chest 1

execute unless score @s cb.cd matches 1.. run scoreboard players set @s cb.cd 2

tp @s ~ ~0.6 ~