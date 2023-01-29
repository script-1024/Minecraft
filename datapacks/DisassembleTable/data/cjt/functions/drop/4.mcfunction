execute if data block ~ ~ ~ Items[{Slot:4b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop4]}
execute if data block ~ ~ ~ Items[{Slot:4b}] run data modify entity @e[limit=1,sort=nearest,tag=drop4] Item set from block ~ ~ ~ Items[{Slot:4b}]

item replace block ~ ~ ~ container.4 with air