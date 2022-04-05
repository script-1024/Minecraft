execute as @e if score @s ys.damage matches 1.. run function ys:damage
execute as @e if score @s ys.damage matches 0 run scoreboard players reset @s ys.damage

schedule function ys:timer_slow 20t