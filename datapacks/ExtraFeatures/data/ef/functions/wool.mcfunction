execute as @e[type=item] if data entity @s Item{id:"minecraft:red_wool"} if block ~ ~ ~ water_cauldron run data modify entity @s Item{}.id set value "minecraft:white_wool"