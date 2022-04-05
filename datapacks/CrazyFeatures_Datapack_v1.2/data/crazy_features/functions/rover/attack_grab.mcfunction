scoreboard players set @s attack1_cd 10
scoreboard players add @s attackTimer1 1
execute if score @s attackTimer1 matches 2 run tag @s add isAnimating
execute if score @s attackTimer1 matches 2 run function rover:animations/animation.rover.drive_forward/reset
execute if score @s attackTimer1 matches 2 run function rover:animations/animation.rover.drive_backwards/reset
execute if score @s attackTimer1 matches 2 run function rover:animations/animation.rover.idle/reset
execute if score @s attackTimer1 matches 2 run function rover:animations/animation.rover.grab/start
execute if score @s attackTimer1 matches 2 run playsound minecraft:claw_grab master @a ~ ~ ~ 0.7 1.0

execute if score @s attackTimer1 matches 2 run title @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] actionbar {"text":"Activating claw...","color":"gold","bold":"true"}
execute if score @s attackTimer1 matches 2 run title @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] times 3 20 10

execute at @s if score @s attackTimer1 matches 5..54 positioned ^ ^ ^3 run execute as @e[type=#grabbable,distance=..3] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute at @s if score @s attackTimer1 matches 55 positioned ^ ^ ^3 run scoreboard players add @e[type=#grabbable,distance=..5] m_grab_block 0
execute at @s if score @s attackTimer1 matches 55 positioned ^ ^ ^3 run tag @e[scores={m_grab_block=0},distance=..3,limit=1,sort=nearest] add m_grabee
execute if score @s attackTimer1 matches 55 if entity @e[tag=m_grabee,distance=..10] run playsound minecraft:claw_claw master @a ~ ~ ~ 0.9 1.0
execute at @s if score @s attackTimer1 matches 55..120 run tp @e[tag=m_grabee,limit=1,sort=nearest,distance=..10] @e[tag=aj.rover.claw,limit=1,sort=nearest]
execute at @s if score @s attackTimer1 matches 55..120 run execute as @e[tag=m_grabee,limit=1,sort=nearest,distance=..10] at @s run tp @s ~ ~0.85 ~
execute at @s if score @s attackTimer1 matches 55..120 run effect give @e[tag=m_grabee,limit=1,sort=nearest,distance=..4] minecraft:levitation 999999 255 true
execute at @s if score @s attackTimer1 matches 120 run tag @e[tag=m_grabee,limit=1,sort=nearest,distance=..4] add m_carriage
execute at @s if score @s attackTimer1 matches 120 run execute as @e[tag=m_grabee,limit=1,sort=nearest,distance=..4] run data merge entity @s {NoAI:1}
execute at @s if score @s attackTimer1 matches 120 run tag @e[tag=m_grabee,limit=1,sort=nearest,distance=..4] remove m_grabee
execute at @s if score @s attackTimer1 matches 120 run scoreboard players set @s m_claw_state 1

execute at @s if score @s attackTimer1 matches 212 run execute as @e[tag=aj.rover,distance=..7] run data merge entity @s {Fire:-1s}
execute if score @s attackTimer1 matches 212 run function rover:animations/animation.rover.idle/start
execute if score @s attackTimer1 matches 212 run tag @s remove isAnimating
execute if score @s attackTimer1 matches 212 run scoreboard players set @s attackTimer1 0
