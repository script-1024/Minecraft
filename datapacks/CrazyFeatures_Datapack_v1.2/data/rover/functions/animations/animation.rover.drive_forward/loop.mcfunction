scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/477
execute as @e[type=area_effect_cloud,tag=aj.rover.body,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/494
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/511
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/528
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/545
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/562
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/579
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/596
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/613
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/630
execute as @e[type=area_effect_cloud,tag=aj.rover.claw,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/647
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/664
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/681
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/698
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/741
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/784
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/827
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/870
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel7,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/913
execute as @e[type=area_effect_cloud,tag=aj.rover.seat,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/956
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_grab_point,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/973
scoreboard players add @s aj.i 1
execute if score @s aj.i matches 30.. run scoreboard players set @s aj.i 0