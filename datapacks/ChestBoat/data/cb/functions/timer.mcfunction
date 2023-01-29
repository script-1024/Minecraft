execute as @a if score @s cb.cd matches 1.. run scoreboard players remove @s cb.cd 1
execute as @a if score @s cb.cd matches 0 run scoreboard players reset @s cb.cd

schedule function cb:timer 1s