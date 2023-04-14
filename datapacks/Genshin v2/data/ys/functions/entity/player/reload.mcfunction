execute if score @p player.p matches 1 run data modify entity @s data.current set from entity @s data.party[{p:1}]
execute if score @p player.p matches 2 run data modify entity @s data.current set from entity @s data.party[{p:2}]
execute if score @p player.p matches 3 run data modify entity @s data.current set from entity @s data.party[{p:3}]
execute if score @p player.p matches 4 run data modify entity @s data.current set from entity @s data.party[{p:4}]

execute store result score @p entity.health.current run data get entity @s data.current.character.health 1
execute store result score @p entity.health.max run data get entity @s data.current.character.max_health 1

execute store result score @p player.atk run data get entity @s data.current.character.atk 1
execute store result score @p player.def run data get entity @s data.current.character.def 1
execute store result score @p player.em run data get entity @s data.current.character.em 1
execute store result score @p player.lv run data get entity @s data.current.character.lv 1
execute store result score @p player.elmentalBonus run data get entity @s data.current.character.eb 10

execute store result score @p player.crit.dmg run data get entity @s data.current.character.cd 10
execute store result score @p player.crit.rate run data get entity @s data.current.character.cr 10

execute store result score @p player.mp.atk run data get entity @s data.current.character.talent[0].value[0] 10
execute store result score @p player.mp.skill run data get entity @s data.current.character.talent[1].value[0] 10
execute store result score @p player.mp.burst run data get entity @s data.current.character.talent[2].value[0] 10