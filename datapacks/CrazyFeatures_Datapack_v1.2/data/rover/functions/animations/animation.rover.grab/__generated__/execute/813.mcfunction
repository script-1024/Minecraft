tp @s ^-1.219 ^-1.543 ^-1.375 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.wheel3,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.grab/__generated__/execute/814
execute store result entity @s Air short 1 run time query gametime