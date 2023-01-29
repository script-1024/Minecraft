execute if data block ~ ~ ~ Items[{Slot:9b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop9]}
execute if data block ~ ~ ~ Items[{Slot:9b}] run data modify entity @e[limit=1,sort=nearest,tag=drop9] Item set from block ~ ~ ~ Items[{Slot:9b}]

item replace block ~ ~ ~ container.9 with air