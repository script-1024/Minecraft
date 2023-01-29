execute if data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{Slot:10b}] if data block ~ ~ ~ Items[{Slot:12b}] run function cjt:drop/0
execute if data block ~ ~ ~ Items[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:10b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 10b
execute if data block ~ ~ ~ Items[{Slot:0b}] if data block ~ ~ ~ Items[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:12b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b

execute if data block ~ ~ ~ Items[{Slot:1b}] run function cjt:drop/1
execute if data block ~ ~ ~ Items[{Slot:2b}] run function cjt:drop/2
execute if data block ~ ~ ~ Items[{Slot:3b}] run function cjt:drop/3
execute if data block ~ ~ ~ Items[{Slot:4b}] run function cjt:drop/4
execute if data block ~ ~ ~ Items[{Slot:4b}] run function cjt:drop/5
# 6 7 8
execute if data block ~ ~ ~ Items[{Slot:9b}] run function cjt:drop/9
# 10
execute if data block ~ ~ ~ Items[{Slot:11b}] run function cjt:drop/11
# 12
execute if data block ~ ~ ~ Items[{Slot:13b}] run function cjt:drop/13
# 14 15 16 17
execute if data block ~ ~ ~ Items[{Slot:18b}] run function cjt:drop/18
execute if data block ~ ~ ~ Items[{Slot:19b}] run function cjt:drop/19
execute if data block ~ ~ ~ Items[{Slot:20b}] run function cjt:drop/20
execute if data block ~ ~ ~ Items[{Slot:21b}] run function cjt:drop/21
execute if data block ~ ~ ~ Items[{Slot:22b}] run function cjt:drop/22
# 23 24 25 26