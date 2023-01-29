execute if data block ~ ~ ~ Items[{Slot:7b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop7]}
execute if data block ~ ~ ~ Items[{Slot:7b}] run data modify entity @e[limit=1,sort=nearest,tag=drop7] Item set from block ~ ~ ~ Items[{Slot:7b}]

item replace block ~ ~ ~ container.7 with air