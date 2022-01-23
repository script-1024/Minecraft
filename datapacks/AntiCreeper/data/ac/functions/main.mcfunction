execute as @e[type=creeper,distance=..10] unless data entity @s {ExplosionRadius:0b} run data modify entity @s ExplosionRadius set value 0b

execute if entity @e[type=creeper,distance=..3] run tag @s add c

execute if entity @s[tag=!c] run tag @s remove bombed

execute if entity @e[type=creeper,distance=..3] if score @s ac.timer matches ..5 run tag @s add bomb

execute if entity @e[type=creeper,distance=0..1.5] run scoreboard players set @s ac.bomb 3

execute if entity @e[type=creeper,distance=1.5..3] run scoreboard players set @s ac.bomb 2

execute if entity @e[type=creeper,distance=3..4.5] run scoreboard players set @s ac.bomb 1

execute unless entity @e[type=creeper,distance=..3] if entity @e[type=creeper,distance=..10] run tag @s remove bomb

execute unless entity @e[type=creeper,distance=..5] run scoreboard players set @s ac.timer 0

execute if entity @e[type=creeper,distance=..5] if score @s ac.timer matches ..0 store result score @s ac.timer run data get entity @e[type=creeper,distance=..5,limit=1,sort=nearest] Fuse 1.1

execute if score @s[tag=bomb,tag=!bombed] ac.timer matches 0 run function ac:bombed

execute unless entity @e[type=creeper,distance=..3] run tag @s remove c