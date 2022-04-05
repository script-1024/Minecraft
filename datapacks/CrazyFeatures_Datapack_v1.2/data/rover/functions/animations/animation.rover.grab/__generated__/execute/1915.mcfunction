execute if score #this.aj.anim aj.i matches 0..103 run function rover:animations/animation.rover.grab/__generated__/execute/1916
execute if score #this.aj.anim aj.i matches 104..207 run function rover:animations/animation.rover.grab/__generated__/execute/1979
execute as @e[type=armor_stand,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime