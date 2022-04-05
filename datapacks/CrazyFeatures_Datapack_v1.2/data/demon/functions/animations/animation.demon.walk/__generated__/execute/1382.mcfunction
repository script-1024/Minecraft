tp @s ^0 ^0.706 ^0.043 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.head,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.walk/__generated__/execute/1383
execute store result entity @s Air short 1 run time query gametime