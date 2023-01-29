execute if data block ~ ~ ~ Items[{Slot:20b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop20]}
execute if data block ~ ~ ~ Items[{Slot:20b}] run data modify entity @e[limit=1,sort=nearest,tag=drop20] Item set from block ~ ~ ~ Items[{Slot:20b}]

item replace block ~ ~ ~ container.20 with air