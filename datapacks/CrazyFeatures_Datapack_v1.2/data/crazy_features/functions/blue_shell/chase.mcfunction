
#execute as @s at @s run tp @s ~ ~ ~ facing entity @p
scoreboard players add @s m_chase_timer 1

execute as @a[tag=shell_target] at @s run tp @e[tag=m_blue_shell_target_middle] ~ ~1 ~
execute as @a[tag=shell_target] at @s run tp @e[tag=m_blue_shell_target_bottom] ~ ~-1 ~
execute as @a[tag=shell_target] at @s run tp @e[tag=m_blue_shell_target_top] ~ ~4 ~


execute as @s[scores={m_chase_timer=2}] at @s run playsound minecraft:blue_shell_launch master @a ~ ~ ~ 3.0 1.0

execute as @s[scores={m_chase_timer=1..2000}] at @s run particle dust 0 0 1 1 ~ ~ ~ 0.2 0.2 0.2 0.1 1
execute as @s[scores={m_chase_timer=1..2000}] at @s unless block ~ ~-0.2 ~ #crazy_features:passable run tp @s ~ ~0.2 ~

#execute as @s[scores={m_chase_timer=1..1000}] at @s run tp @s ^ ^ ^0.3 facing entity @e[tag=m_blue_shell_target_middle,limit=1,sort=nearest]


execute as @s[scores={m_chase_timer=1..1000}] at @s anchored eyes facing entity @e[tag=m_blue_shell_target_middle,limit=1,sort=nearest] eyes positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^6 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3 ~ ~



execute as @s[scores={m_chase_timer=1..800}] at @s if entity @e[tag=m_blue_shell_target_middle,distance=..6] run playsound minecraft:blue_shell_prepare master @a ~ ~ ~ 3.0 1.0
execute as @s[scores={m_chase_timer=1..800}] at @s if entity @e[tag=m_blue_shell_target_middle,distance=..6] run scoreboard players set @s m_chase_timer 801
execute as @s[scores={m_chase_timer=1..1000}] at @s if entity @e[tag=m_blue_shell_target_middle,distance=..3] run scoreboard players set @s m_chase_timer 1001

execute as @s[scores={m_chase_timer=1001..1200}] at @s run tp @s ^ ^ ^0.4 facing entity @e[tag=m_blue_shell_target_top,limit=1,sort=nearest]
execute as @s[scores={m_chase_timer=1001..1200}] at @s if entity @e[tag=m_blue_shell_target_top,distance=..0.5] run scoreboard players set @s m_chase_timer 1201

execute as @s[scores={m_chase_timer=1201..1400}] at @s run tp @s ^ ^ ^0.6 facing entity @e[tag=m_blue_shell_target_bottom,limit=1,sort=nearest]
execute as @s[scores={m_chase_timer=1201..1400}] at @s if entity @e[tag=m_blue_shell_target_bottom,distance=..0.7] run playsound minecraft:blue_shell_explode master @a ~ ~ ~ 3.0 1.0
execute as @s[scores={m_chase_timer=1201..1400}] at @s if entity @e[tag=m_blue_shell_target_bottom,distance=..0.7] run stopsound @a master minecraft:blue_shell_prepare
execute as @s[scores={m_chase_timer=1201..1400}] at @s if entity @e[tag=m_blue_shell_target_bottom,distance=..0.7] run scoreboard players set @s m_chase_timer 1601


execute as @s[scores={m_chase_timer=1604}] at @s run particle dust 0 0 1 2 ~ ~ ~ 1 1 1 0.1 100
execute as @s[scores={m_chase_timer=1604}] at @s run particle dust 0 0 1 1 ~ ~ ~ 2 2 2 0.1 100
execute as @s[scores={m_chase_timer=1604}] at @s run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:5}
execute as @s[scores={m_chase_timer=1604}] at @s run particle minecraft:explosion ~ ~ ~ 2 2 2 0.1 10
execute as @s[scores={m_chase_timer=1604}] at @s run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.1 10
execute as @s[scores={m_chase_timer=1604}] at @s run kill @e[tag=shell_target]
execute as @s[scores={m_chase_timer=1604}] at @s run tag @a[tag=shell_target] remove shell_target
execute as @s[scores={m_chase_timer=1604}] at @s run kill @s
