function dd:entity/health
function #dd:transformation

execute if score @s dd.timer matches ..-1 run kill @s

execute if entity @s[tag=t] if score @s dd.timer matches 30.. run tag @s add x

execute if entity @s[tag=f] if score @s dd.timer matches 20.. run tag @s add x

execute if entity @s[tag=d] run scoreboard players operation @s entity.transformation.scale = @s dd.timer