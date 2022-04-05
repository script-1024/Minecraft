scoreboard players set @s attack1_cd 10
scoreboard players add @s attackTimer1 1
execute if score @s attackTimer1 matches 302 run tag @s add isAnimating
execute if score @s attackTimer1 matches 302 run function rover:animations/animation.rover.drive_forward/reset
execute if score @s attackTimer1 matches 302 run function rover:animations/animation.rover.drive_backwards/reset
execute if score @s attackTimer1 matches 302 run function rover:animations/animation.rover.idle/reset
execute if score @s attackTimer1 matches 302 run function rover:animations/animation.rover.release/start
execute if score @s attackTimer1 matches 302 run playsound minecraft:claw_grab master @a ~ ~ ~ 0.7 1.0

execute if score @s attackTimer1 matches 302 run title @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] actionbar {"text":"Releasing carriage...","color":"dark_red","bold":"true"}
execute if score @s attackTimer1 matches 302 run title @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] times 3 20 10


execute at @s if score @s attackTimer1 matches 370 positioned ^ ^0.5 ^-1.4 run tag @e[type=#grabbable,tag=m_carriage,distance=..3] add m_grabee
execute at @s if score @s attackTimer1 matches 370 positioned ^ ^0.5 ^-1.4 run tag @e[type=#grabbable,tag=m_carriage,distance=..3] remove m_carriage
execute at @s if score @s attackTimer1 matches 370..433 run tp @e[tag=m_grabee,limit=1,sort=nearest,distance=..10] @e[tag=aj.rover.claw,limit=1,sort=nearest]
execute at @s if score @s attackTimer1 matches 370..433 run execute as @e[tag=m_grabee,limit=1,sort=nearest,distance=..10] at @s run tp @s ~ ~0.85 ~
execute if score @s attackTimer1 matches 365 run playsound minecraft:claw_claw master @a ~ ~ ~ 0.9 1.0
execute at @s if score @s attackTimer1 matches 433 positioned ^ ^ ^3 run execute as @e[type=#grabbable,tag=m_grabee,limit=1,sort=nearest,distance=..3] run data merge entity @s {NoAI:0}
execute at @s if score @s attackTimer1 matches 433 positioned ^ ^ ^3 run effect clear @e[type=#grabbable,tag=m_grabee,limit=1,sort=nearest,distance=..3] levitation
execute at @s if score @s attackTimer1 matches 433 positioned ^ ^ ^3 run tag @e[type=#grabbable,tag=m_grabee,limit=1,sort=nearest,distance=..3] remove m_grabee

execute at @s if score @s attackTimer1 matches 512 run execute as @e[tag=aj.rover,distance=..7] run data merge entity @s {Fire:-1s}
execute if score @s attackTimer1 matches 512 run function rover:animations/animation.rover.idle/start
execute if score @s attackTimer1 matches 512 run tag @s remove isAnimating
execute if score @s attackTimer1 matches 512 run scoreboard players set @s attackTimer1 0
