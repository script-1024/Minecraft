execute if score #active ac.state matches 1 as @a at @s run function ac:main

execute if score #active ac.state matches 0 as @a at @s as @e[type=creeper,distance=..10] if data entity @s {ExplosionRadius:0b} run data modify entity @s ExplosionRadius set value 3b

execute as @a unless score @s ac matches -2147483648..2147483647 run scoreboard players set @s ac 0

scoreboard players enable @a[gamemode=creative,tag=!op] ac

scoreboard players enable @a[tag=op] ac

execute as @a[gamemode=!creative,tag=!op] run trigger ac set 0

execute as @a[gamemode=creative,tag=!op] unless score @s ac matches 0 run function ac:switch

execute as @a[tag=op] unless score @s ac matches 0 run function ac:switch

execute as @a[tag=op] run title @s actionbar [{"text":"爆炸計時: ","color": "yellow"},{"score":{"name": "@s","objective": "ac.timer"}}]