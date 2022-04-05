execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.rover.arm_6,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,0f,-180f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0 ^-1.008 ^0.938 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0 ^-0.911 ^0.938 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0 ^-0.816 ^0.938 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0 ^-0.717 ^0.938 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0 ^-0.62 ^0.938 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^-0.523 ^0.938 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^-0.429 ^0.938 ~ ~