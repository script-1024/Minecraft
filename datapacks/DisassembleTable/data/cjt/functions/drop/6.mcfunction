execute if data block ~ ~ ~ Items[{Slot:6b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop6]}
execute if data block ~ ~ ~ Items[{Slot:6b}] run data modify entity @e[limit=1,sort=nearest,tag=drop6] Item set from block ~ ~ ~ Items[{Slot:6b}]

item replace block ~ ~ ~ container.6 with air