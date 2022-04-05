scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2600
execute as @e[type=area_effect_cloud,tag=aj.rover.body,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2643
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2660
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2677
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2694
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2711
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2728
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2745
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2762
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2779
execute as @e[type=area_effect_cloud,tag=aj.rover.claw,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2796
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2813
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2830
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2847
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2890
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2933
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/2976
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/3019
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel7,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/3062
execute as @e[type=area_effect_cloud,tag=aj.rover.seat,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/3105
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_grab_point,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards_drill/__generated__/execute/3122
scoreboard players add @s aj.i 1
execute if score @s aj.i matches 30.. run scoreboard players set @s aj.i 0