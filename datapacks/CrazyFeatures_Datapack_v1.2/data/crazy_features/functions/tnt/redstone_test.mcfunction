execute as @s at @s if block ~ ~ ~1 redstone_block run function crazy_features:tnt/ignite
execute as @s at @s if block ~ ~ ~-1 redstone_block run function crazy_features:tnt/ignite
execute as @s at @s if block ~1 ~ ~ redstone_block run function crazy_features:tnt/ignite
execute as @s at @s if block ~-1 ~ ~ redstone_block run function crazy_features:tnt/ignite
execute as @s at @s if block ~ ~1 ~ redstone_block run function crazy_features:tnt/ignite
execute as @s at @s if block ~ ~-1 ~ redstone_block run function crazy_features:tnt/ignite

execute as @s at @s if block ~ ~ ~1 redstone_wire unless block ~ ~ ~1 redstone_wire[power=0] run function crazy_features:tnt/ignite
execute as @s at @s if block ~ ~ ~-1 redstone_wire unless block ~ ~ ~-1 redstone_wire[power=0] run function crazy_features:tnt/ignite
execute as @s at @s if block ~1 ~ ~ redstone_wire unless block ~1 ~ ~ redstone_wire[power=0] run function crazy_features:tnt/ignite
execute as @s at @s if block ~-1 ~ ~ redstone_wire unless block ~-1 ~ ~ redstone_wire[power=0] run function crazy_features:tnt/ignite

execute as @s at @s if block ~ ~ ~1 minecraft:redstone_torch[lit=true] run function crazy_features:tnt/ignite
execute as @s at @s if block ~ ~ ~-1 minecraft:redstone_torch[lit=true] run function crazy_features:tnt/ignite
execute as @s at @s if block ~1 ~ ~ minecraft:redstone_torch[lit=true] run function crazy_features:tnt/ignite
execute as @s at @s if block ~-1 ~ ~ minecraft:redstone_torch[lit=true] run function crazy_features:tnt/ignite
execute as @s at @s if block ~ ~-1 ~ minecraft:redstone_torch[lit=true] run function crazy_features:tnt/ignite

execute as @s at @s if block ~ ~ ~1 #minecraft:pressure_plates[powered=true] run function crazy_features:tnt/ignite
execute as @s at @s if block ~ ~ ~-1 #minecraft:pressure_plates[powered=true] run function crazy_features:tnt/ignite
execute as @s at @s if block ~1 ~ ~ #minecraft:pressure_plates[powered=true] run function crazy_features:tnt/ignite
execute as @s at @s if block ~-1 ~ ~ #minecraft:pressure_plates[powered=true] run function crazy_features:tnt/ignite
