execute if score #this.aj.anim aj.i matches 0..13 run function rover:animations/animation.rover.drill_close/__generated__/execute/3755
execute if score #this.aj.anim aj.i matches 14..26 run function rover:animations/animation.rover.drill_close/__generated__/execute/3762
execute as @e[type=armor_stand,tag=aj.rover.body,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime