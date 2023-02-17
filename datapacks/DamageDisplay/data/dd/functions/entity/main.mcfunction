function dd:entity/health

execute if entity @s[tag=t] if score @s dd.timer matches 18.. run kill @s
execute if entity @s[tag=t,tag=!ef] store result entity @s transformation.scale[0] float 0.1 run scoreboard players get @s dd.timer
execute if entity @s[tag=t,tag=!ef] store result entity @s transformation.scale[1] float 0.1 run scoreboard players get @s dd.timer
execute if entity @s[tag=t,tag=!ef] store result entity @s transformation.scale[2] float 0.1 run scoreboard players get @s dd.timer

#unless score @s dd.timer matches 10..
execute if entity @s[tag=ef] if score @s dd.timer matches 18.. run kill @s
execute if entity @s[tag=ef] store result entity @s transformation.scale[0] float 0.06 run scoreboard players get @s dd.timer
execute if entity @s[tag=ef] store result entity @s transformation.scale[1] float 0.06 run scoreboard players get @s dd.timer
execute if entity @s[tag=ef] store result entity @s transformation.scale[2] float 0.06 run scoreboard players get @s dd.timer