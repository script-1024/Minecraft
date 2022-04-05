execute if score #this.aj.anim aj.i matches 0..13 run function rover:animations/animation.rover.drill_open/__generated__/execute/3380
execute if score #this.aj.anim aj.i matches 14..26 run function rover:animations/animation.rover.drill_open/__generated__/execute/3387
execute as @e[type=armor_stand,tag=aj.rover.arm_3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime