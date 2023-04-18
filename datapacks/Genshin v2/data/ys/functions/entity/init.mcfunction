tag @s add init

effect give @s resistance infinite 4 true

execute unless score @s entity.res matches -1000..1000 run scoreboard players set @s entity.res 10
execute unless score @s entity.health.current matches 0.. run scoreboard players set @s entity.health.current 1000
execute unless score @s entity.health.max matches 0.. run scoreboard players set @s entity.health.max 1000
execute unless score @s element.state matches 0.. run scoreboard players set @s element.state 0