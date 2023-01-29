execute if data block ~ ~ ~ Items[{Slot:23b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop23]}
execute if data block ~ ~ ~ Items[{Slot:23b}] run data modify entity @e[limit=1,sort=nearest,tag=drop23] Item set from block ~ ~ ~ Items[{Slot:23b}]

item replace block ~ ~ ~ container.23 with air