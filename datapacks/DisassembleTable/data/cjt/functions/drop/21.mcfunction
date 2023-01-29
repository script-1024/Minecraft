execute if data block ~ ~ ~ Items[{Slot:21b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop21]}
execute if data block ~ ~ ~ Items[{Slot:21b}] run data modify entity @e[limit=1,sort=nearest,tag=drop21] Item set from block ~ ~ ~ Items[{Slot:21b}]

item replace block ~ ~ ~ container.21 with air