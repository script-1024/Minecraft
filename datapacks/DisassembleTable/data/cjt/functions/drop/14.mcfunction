execute if data block ~ ~ ~ Items[{Slot:14b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop14]}
execute if data block ~ ~ ~ Items[{Slot:14b}] run data modify entity @e[limit=1,sort=nearest,tag=drop14] Item set from block ~ ~ ~ Items[{Slot:14b}]

item replace block ~ ~ ~ container.14 with air