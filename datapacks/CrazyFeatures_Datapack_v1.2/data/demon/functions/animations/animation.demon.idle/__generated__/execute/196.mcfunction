execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-179.012f,0f,-180f]
execute if score #this.aj.anim aj.i matches 1 as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-179.09f,0f,-180f]
execute if score #this.aj.anim aj.i matches 2 as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-179.176f,0f,-180f]
execute if score #this.aj.anim aj.i matches 3 as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-179.26f,0f,180f]
execute if score #this.aj.anim aj.i matches 4 as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-179.347f,0f,180f]
execute if score #this.aj.anim aj.i matches 5 as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-179.433f,0f,180f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-179.521f,0f,180f]
execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-179.605f,0f,180f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0 ^-0.512 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 1..2 run tp @s ^0 ^-0.512 ^-0.001 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0 ^-0.513 ^-0.002 ~ ~
execute if score #this.aj.anim aj.i matches 4..5 run tp @s ^0 ^-0.513 ^-0.003 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^-0.513 ^-0.004 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0 ^-0.514 ^-0.005 ~ ~