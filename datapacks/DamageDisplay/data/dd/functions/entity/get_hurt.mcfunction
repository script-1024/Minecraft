scoreboard players operation @s entity.health.diff = @s entity.health.prev
scoreboard players operation @s entity.health.diff -= @s entity.health.current
scoreboard players operation @s entity.health.prev = @s entity.health.current

scoreboard players add #throw dd.timer 1
scoreboard players operation #tmp dd.timer = #throw dd.timer
scoreboard players operation #tmp dd.timer %= #10 const

tag @s add e
execute anchored eyes positioned ^ ^ ^ summon text_display run function dd:entity/text_display