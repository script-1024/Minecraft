schedule function ys:timer 0.1s

execute as @e[scores={element.anemo=1..}] run scoreboard players remove @s element.anemo 1
execute as @e[scores={element.cryo=1..}] run scoreboard players remove @s element.cryo 1
execute as @e[scores={element.dendro=1..}] run scoreboard players remove @s element.dendro 1
execute as @e[scores={element.electro=1..}] run scoreboard players remove @s element.electro 1
execute as @e[scores={element.geo=1..}] run scoreboard players remove @s element.geo 1
execute as @e[scores={element.hydro=1..}] run scoreboard players remove @s element.hydro 1
execute as @e[scores={element.pyro=1..}] run scoreboard players remove @s element.pyro 1

execute as @e[scores={timer.aura=1..}] run scoreboard players remove @s timer.aura 1
execute as @e[scores={timer.aura=..0}] run scoreboard players set @s counter.aura 0

execute as @e[scores={timer.icon=1..}] run scoreboard players remove @s timer.icon 1
execute as @e[scores={timer.frozen=1..}] run scoreboard players remove @s timer.frozen 1
execute as @e[scores={timer.burning=1..}] run scoreboard players remove @s timer.burning 1

execute as @e[tag=icon,tag=dp,scores={entity.tf.scale=6..}] run scoreboard players remove @s entity.tf.scale 1
execute as @e[tag=icon,tag=dp,scores={entity.tf.scale=..5}] run tag @s remove dp
execute as @e[tag=icon,tag=!dp,scores={entity.tf.scale=..9}] run scoreboard players add @s entity.tf.scale 1

execute as @e[scores={element.cryo=0..}] at @s run function ys:entity/element/get/cryo/thread
execute as @e[scores={element.pyro=0..}] at @s run function ys:entity/element/get/pyro/thread
execute as @e[scores={element.hydro=0..}] at @s run function ys:entity/element/get/hydro/thread

execute as @e[scores={player.cd.atk=1..}] run scoreboard players remove @s player.cd.atk 1