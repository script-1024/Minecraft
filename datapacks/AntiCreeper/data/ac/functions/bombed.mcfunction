tag @s remove bomb

tag @s add bombed

execute if score @s ac.bomb matches 1 run effect give @s instant_damage 1 0 true

execute if score @s ac.bomb matches 2 run effect give @s instant_damage 1 1 true

execute if score @s ac.bomb matches 3 run effect give @s instant_damage 1 2 true