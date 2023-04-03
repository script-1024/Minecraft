execute store result score @s entity.rx run data get entity @s Rotation[1]
execute if entity @s[tag=boom,tag=!end] run data modify entity @e[limit=1,sort=nearest,tag=el.ovl,tag=!boom] NoAI set value true

execute if entity @s[tag=!boom] unless block ~ ~ ~ air facing entity @e[limit=1,sort=nearest,tag=boom] feet run tp @s ^ ^ ^1
execute if entity @e[tag=boom] unless block ^ ^ ^1 air run tag @s add wall
execute if entity @e[tag=boom] unless block ^ ^ ^2 air run tag @s add wall

execute if entity @s[tag=boom,tag=!wall] run tp @e[limit=1,sort=nearest,tag=el.ovl,tag=!boom] ^ ^ ^2
execute if entity @s[tag=boom,tag=!end] run tp @s ~ ~ ~ ~ ~-15
execute if entity @s[tag=boom,tag=end] if score @s entity.rx matches ..-15 run tp @s ~ ~ ~ ~ ~15
execute if entity @s[tag=boom,tag=!end] if score @s entity.rx matches -90 run tp @s ~ ~ ~ ~180 ~
execute if entity @s[tag=boom] if score @s entity.rx matches -90 run tag @s add end
execute if entity @s[tag=boom,tag=end] if score @s entity.rx matches 0.. run kill @e[limit=1,sort=nearest,tag=origin]
execute if entity @s[tag=boom,tag=end] if score @s entity.rx matches 0.. run kill @s

execute unless entity @e[tag=boom,distance=..5] run data modify entity @e[limit=1,sort=nearest,tag=el.ovl,tag=!boom] NoAI set value false
execute unless entity @e[tag=boom,distance=..5] run scoreboard players set @e[limit=1,sort=nearest,tag=el.ovl,tag=!boom] element.state 0
execute unless entity @e[tag=boom,distance=..5] run tag @e[limit=1,sort=nearest,tag=el.ovl,tag=!boom] remove el.ovl