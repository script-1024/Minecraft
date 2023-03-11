execute if entity @s[type=player] unless score @s player.damage matches 1.. run damage @s 0.01 generic

execute if entity @s[type=!player] run function ys:entity/set/damage

scoreboard players operation @s entity.health.current -= @s entity.damage
#execute store result entity @s Health float 1 run scoreboard players get @s entity.health.current
execute if entity @s[type=!player] if score @s entity.health.current matches ..0 run kill @s
scoreboard players set @s entity.damage 0

execute if entity @s[type=player] if score @s entity.health.current matches ..0 run tag @s add died