scoreboard players set @s oakleyHealth 0
tag @s remove m_bossDisplay
bossbar set minecraft:demon_hp visible false
tag @e[tag=aj.demon.root_entity,scores={m_mobHealth=1..}] add m_bossDisplay
execute if entity @e[tag=m_bossDisplay] run bossbar set minecraft:demon_hp visible true
execute unless entity @e[tag=m_bossDisplay] run gamerule showDeathMessages true
