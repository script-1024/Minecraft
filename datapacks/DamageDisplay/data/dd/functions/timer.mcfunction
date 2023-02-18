schedule function dd:timer 0.02s

scoreboard players add @e[tag=!x,scores={dd.timer=0..}] dd.timer 1
scoreboard players remove @e[tag=x,scores={dd.timer=0..}] dd.timer 1