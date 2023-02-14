scoreboard players set #-1 const -1
scoreboard players set #10 const 10
scoreboard players set #60 const 60

scoreboard players set #t ht.tag 0
scoreboard players set #game ht.tag -1
scoreboard players set #voted ht.tag 0

execute unless score #ps ht.tag matches 0.. run scoreboard players set #ps ht.tag 0
execute unless score #gt ht.tag matches 1.. run scoreboard players set #gt ht.tag 36000
execute unless score #uid ht.tag matches 0.. run scoreboard players set #uid ht.tag 0