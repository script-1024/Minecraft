execute if data block ~ ~ ~ Items[{Slot:3b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop3]}
execute if data block ~ ~ ~ Items[{Slot:3b}] run data modify entity @e[limit=1,sort=nearest,tag=drop3] Item set from block ~ ~ ~ Items[{Slot:3b}]

item replace block ~ ~ ~ container.3 with air