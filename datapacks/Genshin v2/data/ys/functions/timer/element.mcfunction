schedule function ys:timer/element 1t

execute as @e[scores={element.pyro=1..}] run scoreboard players remove @s element.pyro 1
execute as @e[scores={element.hydro=1..}] run scoreboard players remove @s element.hydro 1
execute as @e[scores={element.anemo=1..}] run scoreboard players remove @s element.anemo 1
execute as @e[scores={element.electro=1..}] run scoreboard players remove @s element.electro 1
execute as @e[scores={element.dendro=1..}] run scoreboard players remove @s element.dendro 1
execute as @e[scores={element.cryo=1..}] run scoreboard players remove @s element.cryo 1
execute as @e[scores={element.geo=1..}] run scoreboard players remove @s element.geo 1
