scoreboard players set @s player.cd.atk 5
damage @e[limit=1,sort=nearest,type=#ys:living] 0.01 generic by @s
execute as @e[limit=1,sort=nearest,type=#ys:living] at @s run function ys:entity/element/get/cryo/weak