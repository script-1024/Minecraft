execute unless block ~ ~ ~ air run tp @s ~ ~1 ~

execute if block ~ ~ ~ air run tag @s add p
execute if block ~ ~ ~ air run tp @s ~ ~.02 ~
execute if block ~ ~ ~ air run data modify entity @s ArmorItems[3] set from storage cjt:nbt Item
execute if block ~ ~ ~ air run playsound block.metal.place block @a ~ ~ ~
execute if block ~ ~ ~ air run setblock ~ ~ ~ barrel[facing=up]{CustomName:' "\\u00a78拆解台\\u00a7f\\uf501\\uf500" '} destroy