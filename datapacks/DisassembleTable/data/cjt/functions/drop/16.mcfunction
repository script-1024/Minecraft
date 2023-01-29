execute if data block ~ ~ ~ Items[{Slot:16b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop16]}
execute if data block ~ ~ ~ Items[{Slot:16b}] run data modify entity @e[limit=1,sort=nearest,tag=drop16] Item set from block ~ ~ ~ Items[{Slot:16b}]

item replace block ~ ~ ~ container.16 with air