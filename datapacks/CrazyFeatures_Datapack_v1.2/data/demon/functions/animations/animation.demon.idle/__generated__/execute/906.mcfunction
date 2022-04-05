execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.491f,2.5f,178.5f]
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.433f,2.5f,178.5f]
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.368f,2.5f,178.5f]
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.305f,2.5f,178.5f]
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.24f,2.5f,178.5f]
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.175f,2.5f,178.5f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.109f,2.5f,178.5f]
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-177.046f,2.5f,178.5f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0.25 ^-0.481 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 1..2 run tp @s ^0.25 ^-0.481 ^-0.001 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0.25 ^-0.481 ^-0.002 ~ ~
execute if score #this.aj.anim aj.i matches 4..5 run tp @s ^0.25 ^-0.482 ^-0.003 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.25 ^-0.482 ^-0.004 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0.25 ^-0.482 ^-0.005 ~ ~