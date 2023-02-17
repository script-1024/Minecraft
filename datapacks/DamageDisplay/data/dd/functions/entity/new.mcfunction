#> entity/main
execute if entity @s[tag=t] if score @s dd.timer matches 30.. run tag @s add x
execute if entity @s[tag=ef] if score @s dd.timer matches 20.. run tag @s add x
execute as @e[tag=t,tag=x] if score @s dd.timer matches ..16 run kill @s
execute as @e[tag=ef,tag=x] if score @s dd.timer matches ..12 run kill @s

#> timer
schedule dd:timer 0.02s
execute as @e[tag=x] if score @s dd.timer matches 1.. run scoreboard players remove @s dd.timer 1

