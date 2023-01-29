execute if data block ~ ~ ~ Items[{Slot:18b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop18]}
execute if data block ~ ~ ~ Items[{Slot:18b}] run data modify entity @e[limit=1,sort=nearest,tag=drop18] Item set from block ~ ~ ~ Items[{Slot:18b}]

item replace block ~ ~ ~ container.18 with air