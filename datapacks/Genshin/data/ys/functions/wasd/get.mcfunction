execute store result score @s ys.dx run data get entity @s Motion[0] 1000
execute store result score @s ys.dz run data get entity @s Motion[2] 1000

execute store result score @s ys.direction run data get entity @s Rotation[0] 1

execute if score @s ys.dx matches 0 if score @s ys.dz matches 0 run function ys:wasd/out/0

execute unless entity @e[tag=o1] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:[o1,origin],Duration:12000,Radius:0}
execute unless entity @e[tag=o2] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:[o2,origin],Duration:12000,Radius:0}
execute unless entity @e[tag=o3] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:[o3,origin],Duration:12000,Radius:0}
execute unless entity @e[tag=o4] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:[o4,origin],Duration:12000,Radius:0}

execute unless entity @e[tag=m1] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:[m1,motion],Duration:12000,Radius:0}
execute unless entity @e[tag=m2] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:[m2,motion],Duration:12000,Radius:0}
execute unless entity @e[tag=m3] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:[m3,motion],Duration:12000,Radius:0}
execute unless entity @e[tag=m4] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:[m4,motion],Duration:12000,Radius:0}

data modify entity @e[tag=m1,limit=1] Pos set from entity @a[scores={ys.uid=1},limit=1] Motion
data modify entity @e[tag=m2,limit=1] Pos set from entity @a[scores={ys.uid=2},limit=1] Motion
data modify entity @e[tag=m3,limit=1] Pos set from entity @a[scores={ys.uid=3},limit=1] Motion
data modify entity @e[tag=m4,limit=1] Pos set from entity @a[scores={ys.uid=4},limit=1] Motion

execute as @e[tag=o1] at @s facing entity @e[tag=m1,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=o2] at @s facing entity @e[tag=m2,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=o3] at @s facing entity @e[tag=m3,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=o4] at @s facing entity @e[tag=m4,limit=1] feet run tp @s ~ ~ ~ ~ ~

execute as @e[tag=origin] store result score @s ys.direction run data get entity @s Rotation[0] 1

execute if score @s ys.uid matches 1 run scoreboard players operation @s ys.direction -= @e[tag=o1,limit=1] ys.direction
execute if score @s ys.uid matches 2 run scoreboard players operation @s ys.direction -= @e[tag=o2,limit=1] ys.direction
execute if score @s ys.uid matches 3 run scoreboard players operation @s ys.direction -= @e[tag=o3,limit=1] ys.direction
execute if score @s ys.uid matches 4 run scoreboard players operation @s ys.direction -= @e[tag=o4,limit=1] ys.direction

execute if data entity @s RootVehicle unless score @s ys.dx matches 0 run function ys:wasd/set
execute if data entity @s RootVehicle unless score @s ys.dz matches 0 run function ys:wasd/set

scoreboard players operation @s ys.kb.wasd = @s ys.kb.w
scoreboard players operation @s ys.kb.wasd += @s ys.kb.a
scoreboard players operation @s ys.kb.wasd += @s ys.kb.s
scoreboard players operation @s ys.kb.wasd += @s ys.kb.d