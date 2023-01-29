execute if data block ~ ~ ~ Items[{id:"minecraft:enchanted_book"}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop_eb]}
execute if data block ~ ~ ~ Items[{id:"minecraft:enchanted_book"}] run data modify entity @e[limit=1,sort=nearest,tag=drop_eb] Item set from block ~ ~ ~ Items[{id:"minecraft:enchanted_book"}]
data remove block ~ ~ ~ Items[{id:"minecraft:enchanted_book"}]
tag @s remove eb