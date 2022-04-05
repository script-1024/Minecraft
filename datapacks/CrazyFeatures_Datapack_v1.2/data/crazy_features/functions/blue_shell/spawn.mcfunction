summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_blue_shell","m_blue_shell_init"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:vex_spawn_egg",Count:1,tag:{CustomModelData:4}}]}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_blue_shell_target_middle","m_blue_shell_target"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_blue_shell_target_top","m_blue_shell_target"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_blue_shell_target_bottom","m_blue_shell_target"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959}
scoreboard players set @e[tag=m_blue_shell_init] m_chase_timer 0

tag @a remove shell_target

execute as @a store result score @s m_exp run data get entity @s XpLevel
execute as @a store result score @s m_exp_p run data get entity @s XpP 1000

execute as @a[tag=!shell_target] run scoreboard players operation @s m_t_score = @s m_exp
scoreboard players set Leader m_t_score 0
scoreboard players operation Leader m_t_score > @a[tag=!shell_target] m_t_score
scoreboard players operation @a[tag=!shell_target] m_t_score -= Leader m_t_score

execute as @a run scoreboard players operation @s m_t_score2 = @s m_exp_p
scoreboard players set Leader m_t_score2 0
scoreboard players operation Leader m_t_score2 > @a[scores={m_t_score=0..},tag=!shell_target] m_t_score2
scoreboard players operation @a[scores={m_t_score=0..},tag=!shell_target] m_t_score2 -= Leader m_t_score2

tag @a[sort=random,limit=1,scores={m_t_score=0..,m_t_score2=0..},tag=!shell_target] add shell_target

tag @e[tag=m_blue_shell_init] remove m_blue_shell_init
kill @s
