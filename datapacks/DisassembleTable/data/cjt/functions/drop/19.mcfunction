execute if data block ~ ~ ~ Items[{Slot:19b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop19]}
execute if data block ~ ~ ~ Items[{Slot:19b}] run data modify entity @e[limit=1,sort=nearest,tag=drop19] Item set from block ~ ~ ~ Items[{Slot:19b}]

item replace block ~ ~ ~ container.19 with air