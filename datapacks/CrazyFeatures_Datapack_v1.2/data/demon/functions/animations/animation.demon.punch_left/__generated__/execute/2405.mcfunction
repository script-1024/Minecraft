execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.demon.leg_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,0f,-180f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0.188 ^-1.121 ^0.188 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0.188 ^-1.12 ^0.19 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0.188 ^-1.118 ^0.194 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0.188 ^-1.116 ^0.198 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0.188 ^-1.115 ^0.201 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.188 ^-1.115 ^0.2 ~ ~