scoreboard players set @s attack2_cd 20
scoreboard players add @s attackTimer2 1
execute if score @s attackTimer2 matches 2 run tag @s add isAnimating
execute if score @s attackTimer2 matches 2 run function rover:animations/animation.rover.drive_forward/reset
execute if score @s attackTimer2 matches 2 run function rover:animations/animation.rover.drive_backwards/reset
execute if score @s attackTimer2 matches 2 run function rover:animations/animation.rover.idle/reset
execute if score @s attackTimer2 matches 2 run function rover:animations/animation.rover.drill_open/reset
execute if score @s attackTimer2 matches 2 run function rover:animations/animation.rover.drill_open/start
execute if score @s attackTimer2 matches 2 run function rover:set_state/door_open
execute if score @s attackTimer2 matches 2 run title @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] actionbar {"text":"Activating drill...","color":"gold","bold":"true"}
execute if score @s attackTimer2 matches 2 run title @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] times 3 20 10
execute if score @s attackTimer2 matches 2 run playsound minecraft:drill_open master @a ~ ~ ~ 2.0 1.0
execute if score @s attackTimer2 matches 32 run function rover:animations/animation.rover.idle_drill/start
execute if score @s attackTimer2 matches 32 run tag @s remove isAnimating
execute if score @s attackTimer2 matches 32 run scoreboard players set @s m_drill_state 1
execute if score @s attackTimer2 matches 32 run scoreboard players set @s attackTimer2 0

execute if score @s attackTimer2 matches 25 run scoreboard players set @s m_r_drill_sound 15
execute if score @s attackTimer2 matches 25 run playsound minecraft:drill_loop master @a ~ ~ ~ 0.4 1.0
