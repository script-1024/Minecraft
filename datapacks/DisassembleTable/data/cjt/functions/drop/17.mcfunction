execute if data block ~ ~ ~ Items[{Slot:17b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop17]}
execute if data block ~ ~ ~ Items[{Slot:17b}] run data modify entity @e[limit=1,sort=nearest,tag=drop17] Item set from block ~ ~ ~ Items[{Slot:17b}]

item replace block ~ ~ ~ container.17 with air