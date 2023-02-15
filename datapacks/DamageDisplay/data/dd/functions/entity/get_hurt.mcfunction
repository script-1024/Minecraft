scoreboard players operation @s entity.health.diff = @s entity.health.prev
scoreboard players operation @s entity.health.diff -= @s entity.health.current

execute summon text_display run function dd:entity/text_display