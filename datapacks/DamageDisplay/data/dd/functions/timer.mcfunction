schedule function dd:timer 1t

scoreboard players add @e[tag=!x,scores={dd.timer=0..}] dd.timer 5
scoreboard players remove @e[tag=x] dd.timer 2