execute if data block ~ ~ ~ Items[{Slot:11b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop11]}
execute if data block ~ ~ ~ Items[{Slot:11b}] run data modify entity @e[limit=1,sort=nearest,tag=drop11] Item set from block ~ ~ ~ Items[{Slot:11b}]

item replace block ~ ~ ~ container.11 with air