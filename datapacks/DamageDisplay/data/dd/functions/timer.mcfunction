schedule function dd:timer 1t

execute as @e[tag=!x,scores={dd.timer=0..}] run scoreboard players add @s dd.timer 5
execute as @e[tag=x] run scoreboard players remove @s dd.timer 2