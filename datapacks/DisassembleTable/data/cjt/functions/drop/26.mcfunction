execute if data block ~ ~ ~ Items[{Slot:26b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop26]}
execute if data block ~ ~ ~ Items[{Slot:26b}] run data modify entity @e[limit=1,sort=nearest,tag=drop26] Item set from block ~ ~ ~ Items[{Slot:26b}]

item replace block ~ ~ ~ container.26 with air