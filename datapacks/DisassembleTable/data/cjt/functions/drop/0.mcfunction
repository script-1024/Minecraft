execute if data block ~ ~ ~ Items[{Slot:0b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop0]}
execute if data block ~ ~ ~ Items[{Slot:0b}] run data modify entity @e[limit=1,sort=nearest,tag=drop0] Item set from block ~ ~ ~ Items[{Slot:0b}]

item replace block ~ ~ ~ container.0 with air