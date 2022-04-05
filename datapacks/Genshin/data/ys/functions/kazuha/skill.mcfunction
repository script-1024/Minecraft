execute unless score @s ys.skillCd matches -1.. run scoreboard players set @s ys.skillCd 60

# 特效
execute if score @s ys.skillCd matches 60 unless entity @e[tag=kzh0,distance=..12] run summon armor_stand ~ ~ ~ {CustomName:'"0"',Invisible:1b,Small:1b,Tags:[efc,kzh0],Marker:1b,NoGravity:1b,NoBasePlate:1b}

execute if score @s ys.skillCd matches 60 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh1,distance=..5] run summon armor_stand ~ ~ ~ {CustomName:'"1"',Invisible:1b,Small:1b,Tags:[efc,kzh1,kzh_s0],Marker:1b,NoGravity:1b,NoBasePlate:1b}
execute if score @s ys.skillCd matches 60 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh2,distance=..5] run summon armor_stand ~ ~ ~ {CustomName:'"2"',Invisible:1b,Small:1b,Tags:[efc,kzh2,kzh_s0],Marker:1b,NoGravity:1b,NoBasePlate:1b}
execute if score @s ys.skillCd matches 60 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh3,distance=..5] run summon armor_stand ~ ~ ~ {CustomName:'"3"',Invisible:1b,Small:1b,Tags:[efc,kzh3,kzh_s0],Marker:1b,NoGravity:1b,NoBasePlate:1b}
execute if score @s ys.skillCd matches 60 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh4,distance=..5] run summon armor_stand ~ ~ ~ {CustomName:'"4"',Invisible:1b,Small:1b,Tags:[efc,kzh4,kzh_s0],Marker:1b,NoGravity:1b,NoBasePlate:1b}

execute if score @s ys.skillCd matches 60 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh5,distance=..5] run summon armor_stand ^3 ^ ^ {CustomName:'"5"',Invisible:1b,Small:1b,Tags:[efc,kzh5,kzh_s1],Marker:1b,NoGravity:1b,NoBasePlate:1b}
execute if score @s ys.skillCd matches 60 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh6,distance=..5] run summon armor_stand ^-3 ^ ^ {CustomName:'"6"',Invisible:1b,Small:1b,Tags:[efc,kzh6,kzh_s1],Marker:1b,NoGravity:1b,NoBasePlate:1b}
execute if score @s ys.skillCd matches 60 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh7,distance=..5] run summon armor_stand ^ ^ ^3 {CustomName:'"7"',Invisible:1b,Small:1b,Tags:[efc,kzh7,kzh_s1],Marker:1b,NoGravity:1b,NoBasePlate:1b}
execute if score @s ys.skillCd matches 60 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh8,distance=..5] run summon armor_stand ^ ^ ^-3 {CustomName:'"8"',Invisible:1b,Small:1b,Tags:[efc,kzh8,kzh_s1],Marker:1b,NoGravity:1b,NoBasePlate:1b}

execute if score @s ys.skillCd matches 40 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh9,distance=..5] run summon armor_stand ~ ~ ~ {CustomName:'"9"',Invisible:1b,Small:1b,Tags:[efc,kzh9,kzh_s2],Marker:1b,NoGravity:1b,NoBasePlate:1b}
execute if score @s ys.skillCd matches 40 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh10,distance=..5] run summon armor_stand ~ ~ ~ {CustomName:'"10"',Invisible:1b,Small:1b,Tags:[efc,kzh10,kzh_s2],Marker:1b,NoGravity:1b,NoBasePlate:1b}
execute if score @s ys.skillCd matches 40 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh11,distance=..5] run summon armor_stand ~ ~ ~ {CustomName:'"11"',Invisible:1b,Small:1b,Tags:[efc,kzh11,kzh_s2],Marker:1b,NoGravity:1b,NoBasePlate:1b}
execute if score @s ys.skillCd matches 40 at @e[tag=kzh0,limit=1,sort=nearest] unless entity @e[tag=kzh12,distance=..5] run summon armor_stand ~ ~ ~ {CustomName:'"12"',Invisible:1b,Small:1b,Tags:[efc,kzh12,kzh_s2],Marker:1b,NoGravity:1b,NoBasePlate:1b}

execute as @e[tag=kzh0,limit=1,sort=nearest] unless score @s ys.efc matches -1.. run scoreboard players set @s ys.efc 65
execute at @e[tag=kzh0,limit=1,sort=nearest] as @e[tag=kzh_s0,limit=4,sort=nearest] unless score @s ys.efc matches -1.. run scoreboard players set @s ys.efc 20
execute at @e[tag=kzh0,limit=1,sort=nearest] as @e[tag=kzh_s1,limit=4,sort=nearest] unless score @s ys.efc matches -1.. run scoreboard players set @s ys.efc 54
execute at @e[tag=kzh0,limit=1,sort=nearest] as @e[tag=kzh_s2,limit=4,sort=nearest] unless score @s ys.efc matches -1.. run scoreboard players set @s ys.efc 40

    # 起跳時的漩渦
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

    # 持續吸引的特效
    execute as @e[tag=kzh_s1,limit=4,sort=nearest] at @s run tp @s ~ ~ ~ ~5 ~
    execute as @e[tag=kzh5,limit=1,sort=nearest] at @s run particle dust 0.8 0.9 0.8 1 ^3 ^0.1 ^ 0 0 0 1 10
    execute as @e[tag=kzh6,limit=1,sort=nearest] at @s run particle dust 0.8 0.9 0.8 1 ^-3 ^0.1 ^ 0 0 0 1 10
    execute as @e[tag=kzh7,limit=1,sort=nearest] at @s run particle dust 0.8 0.9 0.8 1 ^ ^0.1 ^3 0 0 0 1 10
    execute as @e[tag=kzh8,limit=1,sort=nearest] at @s run particle dust 0.8 0.9 0.8 1 ^ ^0.1 ^-3 0 0 0 1 10

    # 降落時的特效
    execute as @e[tag=kzh9,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-20 ~-0.3
    execute as @e[tag=kzh9,limit=1,sort=nearest] at @s run particle dust 0.4 0.9 0.7 0.75 ^ ^ ^3 0 0 0 1 20

    execute as @e[tag=kzh10,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-10 ~-0.28
    execute as @e[tag=kzh10,limit=1,sort=nearest] at @s run particle dust 0.4 0.85 0.9 1 ^ ^ ^3 0 0 0 1 10
    execute as @e[tag=kzh10,limit=1,sort=nearest] at @s run particle dust 0.4 0.85 0.9 1 ^ ^0.4 ^3 0 0 0 1 10
    execute as @e[tag=kzh10,limit=1,sort=nearest] at @s run particle dust 0.4 0.85 0.9 1 ^ ^0.6 ^3.2 0 0 0 1 10
    execute as @e[tag=kzh10,limit=1,sort=nearest] at @s run particle dust 0.5 0.9 0.9 0.8 ^0.3 ^0.2 ^2.8 0 0 0 1 10

    execute as @e[tag=kzh11,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-10 ~0.32
    execute as @e[tag=kzh11,limit=1,sort=nearest] at @s run particle dust 0.5 1.0 0.8 1 ^ ^ ^-3 0 0 0 1 10
    execute as @e[tag=kzh11,limit=1,sort=nearest] at @s run particle dust 0.5 1.0 0.9 1 ^ ^0.4 ^-3 0 0 0 1 10
    execute as @e[tag=kzh11,limit=1,sort=nearest] at @s run particle dust 0.5 1.0 0.85 1 ^ ^0.6 ^-3.2 0 0 0 1 10
    execute as @e[tag=kzh11,limit=1,sort=nearest] at @s run particle dust 0.7 1.0 0.7 0.6 ^0.3 ^0.2 ^-2.8 0 0 0 1 10

    execute as @e[tag=kzh12,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-30 ~-0.3
    execute as @e[tag=kzh12,limit=1,sort=nearest] at @s run particle dust 0.9 0.6 0.5 1 ^ ^0.3 ^3 0 0 0 1 1
    execute as @e[tag=kzh12,limit=1,sort=nearest] at @s run particle dust 0.9 0.76 0.5 1 ^0.8 ^ ^2.5 0 0 0 1 1
# ...


execute at @e[tag=kzh0,limit=1,sort=nearest] as @e[tag=!efc,type=!player,type=!armor_stand,distance=..12] at @s facing entity @e[tag=kzh0] feet run tp ^ ^ ^0.25
execute at @e[tag=kzh0,limit=1,sort=nearest] as @e[tag=!efc,type=!player,type=!armor_stand,distance=..2] unless score @s ys.damage matches 0.. run scoreboard players set @s ys.damage 1


execute if score @s ys.skillCd matches 59..60 run effect give @s minecraft:levitation 1 9 true
execute if block ~ ~-1 ~ air run effect give @s minecraft:slow_falling 1 0 true

execute if score @s ys.skillCd matches -1 run tag @s remove noSkill
execute if score @s ys.skillCd matches -1 run function ys:kazuha/give
