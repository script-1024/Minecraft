execute if data block ~ ~ ~ Items[{Slot:2b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop2]}
execute if data block ~ ~ ~ Items[{Slot:2b}] run data modify entity @e[limit=1,sort=nearest,tag=drop2] Item set from block ~ ~ ~ Items[{Slot:2b}]

item replace block ~ ~ ~ container.2 with air