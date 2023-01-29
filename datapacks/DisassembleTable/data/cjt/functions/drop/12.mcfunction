execute if data block ~ ~ ~ Items[{Slot:12b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop12]}
execute if data block ~ ~ ~ Items[{Slot:12b}] run data modify entity @e[limit=1,sort=nearest,tag=drop12] Item set from block ~ ~ ~ Items[{Slot:12b}]

item replace block ~ ~ ~ container.12 with air