schedule function dd:timer 1t

scoreboard players add @e[tag=!x,scores={dd.timer=0..}] dd.timer 5
scoreboard players remove @e[tag=x] dd.timer 2

execute as @e if score @s entity.state.wet matches 1.. if score @s entity.timer.wet matches 1.. run scoreboard players set @s entity.timer.wet 100
execute as @e unless score @s entity.state.wet matches 1.. if score @s entity.timer.wet matches 1.. run scoreboard players remove @s entity.timer.wet 1
execute as @e if score @s entity.timer.fire matches 1.. run scoreboard players remove @s entity.timer.fire 1