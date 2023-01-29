execute if data block ~ ~ ~ Items[{Slot:24b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop24]}
execute if data block ~ ~ ~ Items[{Slot:24b}] run data modify entity @e[limit=1,sort=nearest,tag=drop24] Item set from block ~ ~ ~ Items[{Slot:24b}]

item replace block ~ ~ ~ container.24 with air