execute if data block ~ ~ ~ Items[{Slot:1b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop1]}
execute if data block ~ ~ ~ Items[{Slot:1b}] run data modify entity @e[limit=1,sort=nearest,tag=drop1] Item set from block ~ ~ ~ Items[{Slot:1b}]

item replace block ~ ~ ~ container.1 with air