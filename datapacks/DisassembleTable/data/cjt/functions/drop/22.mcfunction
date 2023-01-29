execute if data block ~ ~ ~ Items[{Slot:22b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop22]}
execute if data block ~ ~ ~ Items[{Slot:22b}] run data modify entity @e[limit=1,sort=nearest,tag=drop22] Item set from block ~ ~ ~ Items[{Slot:22b}]

item replace block ~ ~ ~ container.22 with air