
execute if entity @s[scores={m_comp_1=1}] run scoreboard players add @s m_eff_1_lvl 1
execute if entity @s[scores={m_comp_2=1}] run scoreboard players add @s m_eff_1_lvl 1
execute if entity @s[scores={m_comp_3=1}] run scoreboard players add @s m_eff_1_lvl 1

execute if entity @s[scores={m_comp_1=2}] run scoreboard players add @s m_eff_2_lvl 1
execute if entity @s[scores={m_comp_2=2}] run scoreboard players add @s m_eff_2_lvl 1
execute if entity @s[scores={m_comp_3=2}] run scoreboard players add @s m_eff_2_lvl 1

execute if entity @s[scores={m_comp_1=3}] run scoreboard players add @s m_eff_3_lvl 1
execute if entity @s[scores={m_comp_2=3}] run scoreboard players add @s m_eff_3_lvl 1
execute if entity @s[scores={m_comp_3=3}] run scoreboard players add @s m_eff_3_lvl 1

execute if entity @s[scores={m_comp_1=4}] run scoreboard players add @s m_eff_4_lvl 1
execute if entity @s[scores={m_comp_2=4}] run scoreboard players add @s m_eff_4_lvl 1
execute if entity @s[scores={m_comp_3=4}] run scoreboard players add @s m_eff_4_lvl 1

execute if entity @s[scores={m_comp_1=5}] run scoreboard players add @s m_eff_5_lvl 1
execute if entity @s[scores={m_comp_2=5}] run scoreboard players add @s m_eff_5_lvl 1
execute if entity @s[scores={m_comp_3=5}] run scoreboard players add @s m_eff_5_lvl 1

execute if entity @s[scores={m_comp_1=6}] run scoreboard players add @s m_eff_6_lvl 1
execute if entity @s[scores={m_comp_2=6}] run scoreboard players add @s m_eff_6_lvl 1
execute if entity @s[scores={m_comp_3=6}] run scoreboard players add @s m_eff_6_lvl 1

execute if entity @s[scores={m_comp_1=7}] run scoreboard players add @s m_eff_7_lvl 1
execute if entity @s[scores={m_comp_2=7}] run scoreboard players add @s m_eff_7_lvl 1
execute if entity @s[scores={m_comp_3=7}] run scoreboard players add @s m_eff_7_lvl 1

execute if entity @s[scores={m_comp_1=8}] run scoreboard players add @s m_eff_8_lvl 1
execute if entity @s[scores={m_comp_2=8}] run scoreboard players add @s m_eff_8_lvl 1
execute if entity @s[scores={m_comp_3=8}] run scoreboard players add @s m_eff_8_lvl 1

execute if entity @s[scores={m_comp_1=9}] run scoreboard players add @s m_eff_9_lvl 1
execute if entity @s[scores={m_comp_2=9}] run scoreboard players add @s m_eff_9_lvl 1
execute if entity @s[scores={m_comp_3=9}] run scoreboard players add @s m_eff_9_lvl 1

scoreboard players set @s[tag=m_tnt_enchant] m_eff_1_lvl 3
scoreboard players set @s[tag=m_tnt_enchant] m_eff_2_lvl 3
scoreboard players set @s[tag=m_tnt_enchant] m_eff_3_lvl 3
scoreboard players set @s[tag=m_tnt_enchant] m_eff_4_lvl 3
scoreboard players set @s[tag=m_tnt_enchant] m_eff_5_lvl 3
scoreboard players set @s[tag=m_tnt_enchant] m_eff_6_lvl 3
scoreboard players set @s[tag=m_tnt_enchant] m_eff_7_lvl 3
scoreboard players set @s[tag=m_tnt_enchant] m_eff_8_lvl 3
scoreboard players set @s[tag=m_tnt_enchant] m_eff_9_lvl 3

execute if entity @s[scores={m_eff_1_lvl=1..}] run function crazy_features:tnt/explode_effect_1
execute if entity @s[scores={m_eff_2_lvl=1..}] run function crazy_features:tnt/explode_effect_2
execute if entity @s[scores={m_eff_3_lvl=1..}] run function crazy_features:tnt/explode_effect_3
execute if entity @s[scores={m_eff_4_lvl=1..}] run function crazy_features:tnt/explode_effect_4
execute if entity @s[scores={m_eff_5_lvl=1..}] run function crazy_features:tnt/explode_effect_5
execute if entity @s[scores={m_eff_6_lvl=1..}] run function crazy_features:tnt/explode_effect_6
execute if entity @s[scores={m_eff_7_lvl=1..}] run function crazy_features:tnt/explode_effect_7
execute if entity @s[scores={m_eff_8_lvl=1..}] run function crazy_features:tnt/explode_effect_8
execute if entity @s[scores={m_eff_9_lvl=1..}] run function crazy_features:tnt/explode_effect_9

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4.0 1.0

kill @s






















playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.0 1.0
kill @e[tag=m_e_tnt,limit=1,sort=nearest]
kill @s
