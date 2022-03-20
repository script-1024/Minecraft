execute as @e[tag=new] if score @s lh.protect matches 1.. run scoreboard players remove @s lh.protect 1
execute as @e[tag=new] if score @s lh.protect matches ..0 run tag @s remove new
execute as @a if score @s lh.cd matches 1.. run scoreboard players remove @s lh.cd 1
schedule function lh:timer 2t