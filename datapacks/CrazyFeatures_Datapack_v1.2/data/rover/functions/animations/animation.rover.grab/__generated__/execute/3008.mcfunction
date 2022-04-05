execute if score #this.aj.anim aj.i matches 130 as @e[type=armor_stand,tag=aj.rover.arm_2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [7.5f,0f,0f]
execute if score #this.aj.anim aj.i matches 130..134 run tp @s ^0 ^0.573 ^-0.424 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^0 ^0.569 ^-0.424 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^0 ^0.562 ^-0.425 ~ ~