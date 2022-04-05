scoreboard players set @s attack2_cd 20
scoreboard players add @s attackTimer2 1
execute if score @s attackTimer2 matches 102 run tag @s add isAnimating
execute if score @s attackTimer2 matches 102 run function rover:animations/animation.rover.drive_forward_drill/reset
execute if score @s attackTimer2 matches 102 run function rover:animations/animation.rover.drive_backwards_drill/reset
execute if score @s attackTimer2 matches 102 run function rover:animations/animation.rover.idle_drill/reset
execute if score @s attackTimer2 matches 102 run function rover:animations/animation.rover.drill_close/reset
execute if score @s attackTimer2 matches 102 run function rover:animations/animation.rover.drill_close/start
execute if score @s attackTimer2 matches 102 run playsound minecraft:drill_close master @a ~ ~ ~ 2.0 1.0

execute if score @s attackTimer2 matches 105 run stopsound @a[distance=..20] master minecraft:drill_loop

execute if score @s attackTimer2 matches 102 run title @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] actionbar {"text":"Deactivating drill...","color":"dark_red","bold":"true"}
execute if score @s attackTimer2 matches 102 run title @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] times 3 20 10

execute if score @s attackTimer2 matches 132 run function rover:set_state/door_closed
execute if score @s attackTimer2 matches 132 run function rover:animations/animation.rover.idle/start
execute if score @s attackTimer2 matches 132 run scoreboard players set @s m_drill_state 0
execute if score @s attackTimer2 matches 132 run tag @s remove isAnimating
execute if score @s attackTimer2 matches 132 run scoreboard players set @s attackTimer2 0
