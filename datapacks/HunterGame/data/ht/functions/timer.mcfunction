schedule function ht:timer 0.1s

execute if score #game ht.tag matches 1.. if score #t ht.tag matches 1.. run scoreboard players remove #t ht.tag 1

execute if score #t ht.tag matches 3600.. run scoreboard players operation #hr ht.tag = #t ht.tag
execute if score #t ht.tag matches 3600.. run scoreboard players operation #hr ht.tag /= #10 const
execute if score #t ht.tag matches 3600.. run scoreboard players operation #hr ht.tag /= #60 const
execute if score #t ht.tag matches 3600.. run scoreboard players operation #hr ht.tag /= #60 const

execute if score #t ht.tag matches 600.. run scoreboard players operation #min ht.tag = #t ht.tag
execute if score #t ht.tag matches 600.. run scoreboard players operation #min ht.tag /= #10 const
execute if score #t ht.tag matches 600.. run scoreboard players operation #min ht.tag /= #60 const
execute if score #t ht.tag matches 600.. run scoreboard players operation #min ht.tag %= #60 const

execute if score #t ht.tag matches 10.. run scoreboard players operation #sec ht.tag = #t ht.tag
execute if score #t ht.tag matches 10.. run scoreboard players operation #sec ht.tag /= #10 const
execute if score #t ht.tag matches 10.. run scoreboard players operation #sec ht.tag %= #60 const

execute if score #t ht.tag matches 0.. run scoreboard players operation #poi ht.tag = #t ht.tag
execute if score #t ht.tag matches 0.. run scoreboard players operation #poi ht.tag %= #10 const