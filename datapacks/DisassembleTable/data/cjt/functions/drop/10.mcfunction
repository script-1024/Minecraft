execute if data block ~ ~ ~ Items[{Slot:10b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop10]}
execute if data block ~ ~ ~ Items[{Slot:10b}] run data modify entity @e[limit=1,sort=nearest,tag=drop10] Item set from block ~ ~ ~ Items[{Slot:10b}]

item replace block ~ ~ ~ container.10 with air