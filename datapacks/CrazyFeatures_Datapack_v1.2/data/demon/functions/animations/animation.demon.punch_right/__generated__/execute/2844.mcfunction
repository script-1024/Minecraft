execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.demon.leg_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-179f,-2.5f,-179f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^-0.25 ^-0.48 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^-0.25 ^-0.48 ^0.002 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^-0.25 ^-0.478 ^0.006 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^-0.25 ^-0.475 ^0.01 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^-0.25 ^-0.474 ^0.012 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^-0.25 ^-0.475 ^0.011 ~ ~