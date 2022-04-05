#TODO:
#Texture improve
#Sounds

#Engine Sound
scoreboard players add @s m_r_engine_sound 1
execute unless entity @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..2] run scoreboard players set @s m_r_engine_sound 33
execute if score @s m_r_engine_sound matches 35.. if entity @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..2] run playsound minecraft:rover_engine master @a ~ ~ ~ 0.5 1.0
execute if score @s m_r_engine_sound matches 35.. run scoreboard players set @s m_r_engine_sound 0

#Seat block score
scoreboard players set @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..2] m_grab_block 1

#Seat Rotation
execute at @e[type=horse,tag=m_rover_seat,limit=1,sort=nearest,distance=..2] run execute store result entity @e[type=horse,tag=m_rover_seat,limit=1,sort=nearest,distance=..0.1] Rotation[0] float 1 run data get entity @s Rotation[0]

#WASD

execute if entity @s[tag=!isAnimating,scores={attackTimer1=0,attackTimer2=0}] run execute as @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] run function crazy_features:rover/rider

#Animation Control
scoreboard players remove @s[scores={m_r_anim_stop=1..}] m_r_anim_stop 1
execute if entity @s[scores={m_r_anim_stop=1}] run function crazy_features:rover/anim_idle


#Villager TP
execute at @s as @e[type=villager,tag=m_r_vil1,distance=..5] if score @s aj.id = @e[type=armor_stand,tag=aj.rover.root_entity,distance=..0.1,limit=1,sort=nearest] aj.id at @e[type=armor_stand,tag=aj.rover.root_entity,distance=..0.1,limit=1,sort=nearest] positioned ^-0.7 ^0.2 ^1.1 run tp @s ~ ~ ~
execute at @s as @e[type=villager,tag=m_r_vil2,distance=..5] if score @s aj.id = @e[type=armor_stand,tag=aj.rover.root_entity,distance=..0.1,limit=1,sort=nearest] aj.id at @e[type=armor_stand,tag=aj.rover.root_entity,distance=..0.1,limit=1,sort=nearest] positioned ^ ^0.5 ^-0.2 run tp @s ~ ~ ~




# ATTACK
execute if entity @s[scores={attackTimer1=1..220}] at @s run function crazy_features:rover/attack_grab
execute if entity @s[scores={attackTimer1=301..520}] at @s run function crazy_features:rover/attack_release
execute if entity @s[scores={attackTimer2=1..99}] at @s run function crazy_features:rover/drill_open
execute if entity @s[scores={attackTimer2=101..199}] at @s run function crazy_features:rover/drill_close
scoreboard players remove @s[scores={attack1_cd=1..}] attack1_cd 1
scoreboard players remove @s[scores={attack2_cd=1..}] attack2_cd 1

#Carriage
execute at @s positioned ^ ^0.8 ^-1.4 run tp @e[tag=m_carriage,limit=1,sort=nearest,distance=..3] ~ ~ ~
execute if entity @s[scores={attackTimer1=0,attackTimer2=0}] unless entity @e[tag=m_carriage,distance=..3] run scoreboard players set @s m_claw_state 0
execute as @a[tag=m_carriage] at @s unless entity @e[type=armor_stand,tag=aj.rover.root_entity,distance=..5] run effect clear @s levitation
execute as @a[tag=m_carriage] at @s unless entity @e[type=armor_stand,tag=aj.rover.root_entity,distance=..5] run tag @s remove m_carriage


#Kill
execute if entity @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:64b},OnGround:1b},distance=..2] run function crazy_features:rover/kill

#Drill
execute if entity @s[scores={attackTimer1=0,attackTimer2=0,m_drill_state=1}] at @s run function crazy_features:rover/drill
