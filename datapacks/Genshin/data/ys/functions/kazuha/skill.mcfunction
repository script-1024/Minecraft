execute unless score @s ys.skillCd matches -2147483648..2147483647 run scoreboard players set @s ys.skillCd 60

# 特效
execute if score @s ys.skillCd matches 59..60 unless entity @e[tag=kzh1,distance=..8] run summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:[efc,kzh1],Marker:1b}
execute if score @s ys.skillCd matches 59..60 unless entity @e[tag=kzh2,distance=..8] at @e[tag=kzh1,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:[efc,kzh2],Marker:1b}
execute if score @s ys.skillCd matches 59..60 unless entity @e[tag=kzh3,distance=..8] at @e[tag=kzh1,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:[efc,kzh3],Marker:1b}
execute if score @s ys.skillCd matches 59..60 unless entity @e[tag=kzh4,distance=..8] at @e[tag=kzh1,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:[efc,kzh4],Marker:1b}

execute if score @s ys.skillCd matches 59..60 unless entity @e[tag=kzh5,distance=..8] at @e[tag=kzh1,limit=1,sort=nearest] run summon armor_stand ^3 ^ ^ {Invisible:1b,Small:1b,Tags:[efc,kzh5],Marker:1b}
execute if score @s ys.skillCd matches 59..60 unless entity @e[tag=kzh6,distance=..8] at @e[tag=kzh1,limit=1,sort=nearest] run summon armor_stand ^-3 ^ ^ {Invisible:1b,Small:1b,Tags:[efc,kzh6],Marker:1b}
execute if score @s ys.skillCd matches 59..60 unless entity @e[tag=kzh7,distance=..8] at @e[tag=kzh1,limit=1,sort=nearest] run summon armor_stand ^ ^ ^3 {Invisible:1b,Small:1b,Tags:[efc,kzh7],Marker:1b}
execute if score @s ys.skillCd matches 59..60 unless entity @e[tag=kzh8,distance=..8] at @e[tag=kzh1,limit=1,sort=nearest] run summon armor_stand ^ ^ ^-3 {Invisible:1b,Small:1b,Tags:[efc,kzh8],Marker:1b}

execute if score @s ys.skillCd matches 59..60 as @e[tag=efc,limit=8,sort=nearest,distance=..12] unless score @s ys.efc matches -1.. run scoreboard players operation @s ys.efc = #kazuha_skill_0 ys.efc

execute as @e[tag=kzh1,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~20 ~-0.3
execute as @e[tag=kzh1,limit=1,sort=nearest] at @s run particle dust 0.4 0.9 0.7 0.75 ^ ^ ^3 0 0 0 1 20

execute as @e[tag=kzh2,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~10 ~-0.28
execute as @e[tag=kzh2,limit=1,sort=nearest] at @s run particle dust 0.4 0.85 0.9 1 ^ ^ ^3 0 0 0 1 10
execute as @e[tag=kzh2,limit=1,sort=nearest] at @s run particle dust 0.4 0.85 0.9 1 ^ ^0.4 ^3 0 0 0 1 10
execute as @e[tag=kzh2,limit=1,sort=nearest] at @s run particle dust 0.4 0.85 0.9 1 ^ ^0.6 ^3.2 0 0 0 1 10
execute as @e[tag=kzh2,limit=1,sort=nearest] at @s run particle dust 0.5 0.9 0.9 0.8 ^0.3 ^0.2 ^2.8 0 0 0 1 10

execute as @e[tag=kzh3,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~10 ~0.32
execute as @e[tag=kzh3,limit=1,sort=nearest] at @s run particle dust 0.5 1.0 0.8 1 ^ ^ ^-3 0 0 0 1 10
execute as @e[tag=kzh3,limit=1,sort=nearest] at @s run particle dust 0.5 1.0 0.9 1 ^ ^0.4 ^-3 0 0 0 1 10
execute as @e[tag=kzh3,limit=1,sort=nearest] at @s run particle dust 0.5 1.0 0.85 1 ^ ^0.6 ^-3.2 0 0 0 1 10
execute as @e[tag=kzh3,limit=1,sort=nearest] at @s run particle dust 0.7 1.0 0.7 0.6 ^0.3 ^0.2 ^-2.8 0 0 0 1 10

execute as @e[tag=kzh4,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~30 ~-0.3
execute as @e[tag=kzh4,limit=1,sort=nearest] at @s run particle dust 0.9 0.6 0.5 1 ^ ^0.3 ^3 0 0 0 1 1
execute as @e[tag=kzh4,limit=1,sort=nearest] at @s run particle dust 0.9 0.76 0.5 1 ^0.8 ^ ^2.5 0 0 0 1 1

execute as @e[tag=kzh5,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=kzh5,limit=1,sort=nearest] at @s run particle dust 0.8 0.9 0.8 1 ^3 ^0.1 ^ 0 0 0 1 10

execute as @e[tag=kzh6,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=kzh6,limit=1,sort=nearest] at @s run particle dust 0.8 0.9 0.8 1 ^-3 ^0.1 ^ 0 0 0 1 10

execute as @e[tag=kzh7,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=kzh7,limit=1,sort=nearest] at @s run particle dust 0.8 0.9 0.8 1 ^ ^0.1 ^3 0 0 0 1 10

execute as @e[tag=kzh8,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=kzh8,limit=1,sort=nearest] at @s run particle dust 0.8 0.9 0.8 1 ^ ^0.1 ^-3 0 0 0 1 10
# ...


execute as @e[tag=!efc,type=!player,distance=..10] at @s facing entity @e[tag=kzh1] feet run tp ^ ^ ^0.2
execute as @e[tag=!efc,type=!player,distance=..10] at @s if entity @e[tag=efc,distance=..1.5] if entity @s[type=!#undead] run effect give @s instant_damage 1 0 true
execute as @e[tag=!efc,type=!player,distance=..10] at @s if entity @e[tag=efc,distance=..1.5] if entity @s[type=#undead] run effect give @s instant_health 1 0 true


execute if score @s ys.skillCd matches 59..60 run effect give @s minecraft:levitation 1 9 true
execute if block ~ ~-1 ~ air run effect give @s minecraft:slow_falling 1 0 true

execute if score @s ys.skillCd matches -1 run tag @s remove noSkill
execute if score @s ys.skillCd matches -1 run function ys:kazuha/give
