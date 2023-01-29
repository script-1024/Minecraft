execute if data block ~ ~ ~ Items[{Slot:13b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop13]}
execute if data block ~ ~ ~ Items[{Slot:13b}] run data modify entity @e[limit=1,sort=nearest,tag=drop13] Item set from block ~ ~ ~ Items[{Slot:13b}]

item replace block ~ ~ ~ container.13 with air