execute store result entity @s data.current.character.health int 1 run scoreboard players get @p entity.health.current
execute store result entity @s data.current.character.max_health int 1 run scoreboard players get @p entity.health.max

execute store result entity @s data.current.character.atk int 1 run scoreboard players get @p player.atk
execute store result entity @s data.current.character.def int 1 run scoreboard players get @p player.def
execute store result entity @s data.current.character.em int 1 run scoreboard players get @p player.em
execute store result entity @s data.current.character.lv int 1 run scoreboard players get @p player.lv
execute store result entity @s data.current.character.eb float 0.1 run scoreboard players get @p player.elmentalBonus

execute store result entity @s data.current.character.cd float 0.1 run scoreboard players get @p player.crit.dmg
execute store result entity @s data.current.character.cr float 0.1 run scoreboard players get @p player.crit.rate

execute if score @p player.p matches 1 run data modify entity @s data.store[{p:1}] set from entity @s data.current
execute if score @p player.p matches 2 run data modify entity @s data.store[{p:2}] set from entity @s data.current
execute if score @p player.p matches 3 run data modify entity @s data.store[{p:3}] set from entity @s data.current
execute if score @p player.p matches 4 run data modify entity @s data.store[{p:4}] set from entity @s data.current

scoreboard players operation @p player.p = @p player.select
scoreboard players add @p player.p 1

function ys:entity/player/reload