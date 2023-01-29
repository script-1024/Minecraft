schedule function ht:timer 0.1s

execute if score #game ht.tag matches 1.. if score #t ht.tag matches 1.. run scoreboard players remove #t ht.tag 1
scoreboard players operation #sec ht.tag = #t ht.tag
scoreboard players operation #sec ht.tag /= #10 const
scoreboard players operation #point ht.tag = #t ht.tag
scoreboard players operation #point ht.tag %= #10 const