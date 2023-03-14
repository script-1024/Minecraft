schedule function ys:timer/element 2t

# 1 --> 0.001

execute as @e[scores={element.pyro=1..}] run scoreboard players operation @s element.pyro -= @s element.decay
execute as @e[scores={element.hydro=1..}] run scoreboard players operation @s element.hydro -= @s element.decay
execute as @e[scores={element.anemo=1..}] run scoreboard players operation @s element.anemo -= @s element.decay
execute as @e[scores={element.electro=1..}] run scoreboard players operation @s element.electro -= @s element.decay
execute as @e[scores={element.dendro=1..}] run scoreboard players operation @s element.dendro -= @s element.decay
execute as @e[scores={element.cryo=1..}] run scoreboard players operation @s element.cryo -= @s element.decay
execute as @e[scores={element.geo=1..}] run scoreboard players operation @s element.geo -= @s element.decay
