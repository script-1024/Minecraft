scoreboard players set #game ht.tag 3
execute as @a[tag=ht] run gamemode survival
execute as @a[team=runner] run attribute @s generic.movement_speed base set 0.12
execute as @a[team=hunter] run attribute @s generic.movement_speed base set 0

scoreboard players set #t ht.tag 200
bossbar set timer color yellow
execute store result bossbar timer max run scoreboard players get #t ht.tag
effect clear @a[tag=ht]
effect give @a[team=hunter] invisibility 20 0 true

execute if score #game ht.tag matches 3 run tellraw @a "\n§b提示> §e準備階段時§6獵手無法行動"