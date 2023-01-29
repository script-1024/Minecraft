execute if data block ~ ~ ~ Items[{Slot:8b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop8]}
execute if data block ~ ~ ~ Items[{Slot:8b}] run data modify entity @e[limit=1,sort=nearest,tag=drop8] Item set from block ~ ~ ~ Items[{Slot:8b}]

item replace block ~ ~ ~ container.8 with air