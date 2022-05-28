tag @s add hurt
execute store result score @s dd.nowHealth run data get entity @s Health
execute store result score @s dd.nowDamage run scoreboard players operation @s dd.preHealth -= @s dd.nowHealth
execute store result score @s dd.preDamage unless score @s dd.nowDamage matches 0 run scoreboard players get @s dd.nowDamage

# 避免「最後一擊」已經出現，但是玩家還是不能將其秒殺的窘境
execute if score @s preDamage matches 5..9 run scoreboard players remove @s preDamage 1
execute if score @s preDamage matches 10..14 run scoreboard players remove @s preDamage 2
execute if score @s preDamage matches 15.. run scoreboard players remove @s preDamage 3

execute unless entity @e[tag=dd,distance=..5] anchored eyes run summon armor_stand ^ ^0.5 ^ {Invisible:1b,Marker:1b,CustomName:' "0" ',CustomNameVisible:1b,Tags:[dd]}
execute as @e[tag=dd,limit=1,sort=nearest] run function dd:set