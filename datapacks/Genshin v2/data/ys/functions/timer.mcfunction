schedule function ys:timer 2t

execute as @e[scores={timer.aura=1..}] run scoreboard players remove @s timer.aura 1
execute as @e[scores={timer.aura=..0}] run scoreboard players set @s counter.aura 0

execute as @e[scores={timer.icon=0..}] run scoreboard players remove @s timer.icon 1
execute as @e[scores={timer.frozen=1..}] run scoreboard players remove @s timer.frozen 1
execute as @e[scores={timer.burning=1..}] run scoreboard players remove @s timer.burning 1

execute as @e[tag=icon,tag=dp,scores={entity.tf.scale=6..}] run scoreboard players remove @s entity.tf.scale 1
execute as @e[tag=icon,tag=dp,scores={entity.tf.scale=..5}] run tag @s remove dp
execute as @e[tag=icon,tag=!dp,scores={entity.tf.scale=..9}] run scoreboard players add @s entity.tf.scale 1

execute as @e[scores={element.cryo=0..}] at @s run function ys:entity/element/get/cryo/thread
execute as @e[scores={element.pyro=0..}] at @s run function ys:entity/element/get/pyro/thread
execute as @e[scores={element.hydro=0..}] at @s run function ys:entity/element/get/hydro/thread

execute as @e[scores={player.cd.atk=1..}] run scoreboard players remove @s player.cd.atk 1



#> ==========================================================================================================



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
