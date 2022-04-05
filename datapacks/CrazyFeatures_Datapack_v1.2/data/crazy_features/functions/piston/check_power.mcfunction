tag @s remove m_piston_power

execute at @s if block ^ ^ ^-1 redstone_block run tag @s add m_piston_power
execute at @s if block ^1 ^ ^ redstone_block run tag @s add m_piston_power
execute at @s if block ^-1 ^ ^ redstone_block run tag @s add m_piston_power
execute at @s if block ^ ^1 ^ redstone_block run tag @s add m_piston_power
execute at @s if block ^ ^-1 ^ redstone_block run tag @s add m_piston_power

execute at @s if block ~ ~ ~1 redstone_wire unless block ~ ~ ~1 redstone_wire[power=0] run tag @s add m_piston_power
execute at @s if block ~ ~ ~-1 redstone_wire unless block ~ ~ ~-1 redstone_wire[power=0] run tag @s add m_piston_power
execute at @s if block ~1 ~ ~ redstone_wire unless block ~1 ~ ~ redstone_wire[power=0] run tag @s add m_piston_power
execute at @s if block ~-1 ~ ~ redstone_wire unless block ~-1 ~ ~ redstone_wire[power=0] run tag @s add m_piston_power
execute at @s if block ~ ~-1 ~ redstone_wire unless block ~ ~-1 ~ redstone_wire[power=0] run tag @s add m_piston_power
execute at @s if block ~ ~1 ~ redstone_wire unless block ~ ~1 ~ redstone_wire[power=0] run tag @s add m_piston_power

execute at @s if block ~ ~ ~1 repeater[powered=true] run tag @s add m_piston_power
execute at @s if block ~ ~ ~-1 repeater[powered=true] run tag @s add m_piston_power
execute at @s if block ~1 ~ ~ repeater[powered=true] run tag @s add m_piston_power
execute at @s if block ~-1 ~ ~ repeater[powered=true] run tag @s add m_piston_power

execute at @s if block ^ ^ ^-1 minecraft:redstone_torch[lit=true] run tag @s add m_piston_power
execute at @s if block ^1 ^ ^ minecraft:redstone_torch[lit=true] run tag @s add m_piston_power
execute at @s if block ^-1 ^ ^ minecraft:redstone_torch[lit=true] run tag @s add m_piston_power
execute at @s if block ^ ^1 ^ minecraft:redstone_torch[lit=true] run tag @s add m_piston_power
execute at @s if block ^ ^-1 ^ minecraft:redstone_torch[lit=true] run tag @s add m_piston_power

execute at @s if block ^ ^ ^-1 minecraft:redstone_wall_torch[lit=true] run tag @s add m_piston_power
execute at @s if block ^1 ^ ^ minecraft:redstone_wall_torch[lit=true] run tag @s add m_piston_power
execute at @s if block ^-1 ^ ^ minecraft:redstone_wall_torch[lit=true] run tag @s add m_piston_power
execute at @s if block ^ ^1 ^ minecraft:redstone_wall_torch[lit=true] run tag @s add m_piston_power
execute at @s if block ^ ^-1 ^ minecraft:redstone_wall_torch[lit=true] run tag @s add m_piston_power

execute at @s if block ^ ^ ^-1 lever[powered=true] run tag @s add m_piston_power
execute at @s if block ^1 ^ ^ lever[powered=true] run tag @s add m_piston_power
execute at @s if block ^-1 ^ ^ lever[powered=true] run tag @s add m_piston_power
execute at @s if block ^ ^1 ^ lever[powered=true] run tag @s add m_piston_power
execute at @s if block ^ ^-1 ^ lever[powered=true] run tag @s add m_piston_power

execute at @s if block ^ ^ ^-1 #minecraft:buttons[powered=true] run tag @s add m_piston_power
execute at @s if block ^1 ^ ^ #minecraft:buttons[powered=true] run tag @s add m_piston_power
execute at @s if block ^-1 ^ ^ #minecraft:buttons[powered=true] run tag @s add m_piston_power
execute at @s if block ^ ^1 ^ #minecraft:buttons[powered=true] run tag @s add m_piston_power
execute at @s if block ^ ^-1 ^ #minecraft:buttons[powered=true] run tag @s add m_piston_power

execute at @s if block ~ ~ ~1 #minecraft:pressure_plates[powered=true] run tag @s add m_piston_power
execute at @s if block ~ ~ ~-1 #minecraft:pressure_plates[powered=true] run tag @s add m_piston_power
execute at @s if block ~1 ~ ~ #minecraft:pressure_plates[powered=true] run tag @s add m_piston_power
execute at @s if block ~-1 ~ ~ #minecraft:pressure_plates[powered=true] run tag @s add m_piston_power

execute if entity @s[scores={m_piston_state=1,m_piston_timer=0},tag=!m_piston_power] run function crazy_features:piston/retract
execute if entity @s[scores={m_piston_state=0,m_piston_timer=0,m_block_state=0},tag=m_piston_power] run function crazy_features:piston/extend
