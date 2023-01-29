execute if data block ~ ~ ~ Items[{Slot:15b}] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[drop,drop15]}
execute if data block ~ ~ ~ Items[{Slot:15b}] run data modify entity @e[limit=1,sort=nearest,tag=drop15] Item set from block ~ ~ ~ Items[{Slot:15b}]

item replace block ~ ~ ~ container.15 with air