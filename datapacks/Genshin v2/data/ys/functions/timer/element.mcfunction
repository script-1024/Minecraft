schedule function ys:timer/element 2t

# 1 --> 0.001

execute as @e[scores={element.pyro=1..}] run scoreboard players operation @s element.pyro -= @s element.decay
execute as @e[scores={element.hydro=1..}] run scoreboard players operation @s element.hydro -= @s element.decay
execute as @e[scores={element.anemo=1..}] run scoreboard players operation @s element.anemo -= @s element.decay
execute as @e[scores={element.electro=1..}] run scoreboard players operation @s element.electro -= @s element.decay
execute as @e[scores={element.dendro=1..}] run scoreboard players operation @s element.dendro -= @s element.decay
execute as @e[scores={element.cryo=1..}] run scoreboard players operation @s element.cryo -= @s element.decay
execute as @e[scores={element.geo=1..}] run scoreboard players operation @s element.geo -= @s element.decay

execute as @e[scores={element.pyro=..-1}] run scoreboard players set @s element.pyro 0
execute as @e[scores={element.hydro=..-1}] run scoreboard players set @s element.hydro 0
execute as @e[scores={element.anemo=..-1}] run scoreboard players set @s element.anemo 0
execute as @e[scores={element.electro=..-1}] run scoreboard players set @s element.electro 0
execute as @e[scores={element.dendro=..-1}] run scoreboard players set @s element.dendro 0
execute as @e[scores={element.cryo=..-1}] run scoreboard players set @s element.cryo 0
execute as @e[scores={element.geo=..-1}] run scoreboard players set @s element.geo 0

execute as @e[scores={element.state=1}] if score @s element.pyro matches 0 run scoreboard players set @s element.state 0
execute as @e[scores={element.state=3}] if score @s element.hydro matches 0 run scoreboard players set @s element.state 0
execute as @e[scores={element.state=7}] if score @s element.anemo matches 0 run scoreboard players set @s element.state 0
execute as @e[scores={element.state=15}] if score @s element.electro matches 0 run scoreboard players set @s element.state 0
execute as @e[scores={element.state=31}] if score @s element.dendro matches 0 run scoreboard players set @s element.state 0
execute as @e[scores={element.state=63}] if score @s element.cryo matches 0 run scoreboard players set @s element.state 0
execute as @e[scores={element.state=127}] if score @s element.geo matches 0 run scoreboard players set @s element.state 0