scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1998
execute as @e[type=area_effect_cloud,tag=aj.rover.body,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2015
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2032
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2049
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2066
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2083
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2100
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2117
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2134
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2151
execute as @e[type=area_effect_cloud,tag=aj.rover.claw,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2168
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2185
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2202
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2219
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2262
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2305
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2348
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2391
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel7,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2434
execute as @e[type=area_effect_cloud,tag=aj.rover.seat,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2477
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_grab_point,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/2494
scoreboard players add @s aj.i 1
execute if score @s aj.i matches 30.. run scoreboard players set @s aj.i 0