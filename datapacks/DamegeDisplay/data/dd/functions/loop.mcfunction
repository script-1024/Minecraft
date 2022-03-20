team join dd @e[tag=dd]

execute as @e[tag=hurt] if score @s dd.timer matches 100.. run tag @s remove hurt
execute as @e[tag=!hurt,tag=!dd] run scoreboard players set @s dd.timer 0

execute as @e[nbt={HurtTime:0s}] at @s if entity @a[distance=..16] store result score @s dd.preHealth run data get entity @s Health
execute as @e[nbt={HurtTime:0s}] at @s if score @s dd.preHealth <= @s dd.preDamge run tag @s add tracked
execute as @e[nbt={HurtTime:10s}] at @s if entity @a[distance=..16] run function dd:get
execute as @e[tag=tracked] at @s unless entity @e[tag=fn,distance=..2] anchored eyes run summon armor_stand ^ ^0.2 ^ {Invisible:1b,Marker:1b,CustomName:' "\\u00a7f\\u00a7l最後一擊!" ',CustomNameVisible:1b,Tags:[dd,fn]}

execute as @e[tag=dd] at @s unless entity @e[tag=!dd,distance=..3] run kill @s
execute as @e[tag=dd,tag=!fn] if score @s dd.timer matches 10.. run kill @s
execute as @e[tag=fn] if score @s dd.timer matches 10.. run kill @s

execute as @e[tag=hurt] at @s anchored eyes run tp @e[tag=dd,tag=!fn,limit=1,sort=nearest,distance=..1] ^ ^0.2 ^
execute as @e[tag=tracked] at @s anchored eyes run tp @e[tag=fn,limit=1,sort=nearest,distance=..1] ^ ^0.2 ^

execute as @e at @s unless entity @a[distance=..32] run scoreboard players reset @s dd.nowHealth
execute as @e at @s unless entity @a[distance=..32] run scoreboard players reset @s dd.preHealth
execute as @e at @s unless entity @a[distance=..32] run scoreboard players reset @s dd.nowDamge
execute as @e at @s unless entity @a[distance=..32] run scoreboard players reset @s dd.preDamge