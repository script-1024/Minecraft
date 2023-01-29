execute if data block ~ ~ ~ Items[{Slot:25b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop25]}
execute if data block ~ ~ ~ Items[{Slot:25b}] run data modify entity @e[limit=1,sort=nearest,tag=drop25] Item set from block ~ ~ ~ Items[{Slot:25b}]

item replace block ~ ~ ~ container.25 with air