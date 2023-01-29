# 變量賦值
scoreboard players set #-1 rand -1
scoreboard players set #a rand 16807
scoreboard players set #b rand 12345
scoreboard players set #m rand 2147483647

scoreboard players set #1 rand 1
scoreboard players set #2 rand 2
scoreboard players set #3 rand 3
scoreboard players set #4 rand 4
scoreboard players set #5 rand 5
scoreboard players set #6 rand 6
scoreboard players set #7 rand 7
scoreboard players set #8 rand 8
scoreboard players set #9 rand 9
scoreboard players set #10 rand 10

scoreboard players set summon dun.room 0
scoreboard players set place dun.room 0
execute unless score set dun.room matches 0..2147483647 run scoreboard players set set dun.room 24