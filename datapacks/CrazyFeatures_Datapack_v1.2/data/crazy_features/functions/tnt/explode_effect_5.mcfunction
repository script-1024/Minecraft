particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.2 100

execute if entity @s[scores={m_eff_5_lvl=1..}] run summon ender_dragon ~ ~1 ~
execute if entity @s[scores={m_eff_5_lvl=1..}] run summon ender_dragon ~ ~2 ~
execute if entity @s[scores={m_eff_5_lvl=1..}] run summon ender_dragon ~-2 ~ ~1

execute if entity @s[scores={m_eff_5_lvl=2..}] run summon ender_dragon ~4 ~ ~
execute if entity @s[scores={m_eff_5_lvl=2..}] run summon ender_dragon ~2 ~4 ~-1
execute if entity @s[scores={m_eff_5_lvl=2..}] run summon ender_dragon ~ ~ ~3
execute if entity @s[scores={m_eff_5_lvl=2..}] run summon ender_dragon ~-3 ~ ~-2

execute if entity @s[scores={m_eff_5_lvl=3..}] run summon ender_dragon ~ ~ ~-5
execute if entity @s[scores={m_eff_5_lvl=3..}] run summon ender_dragon ~6 ~5 ~4
execute if entity @s[scores={m_eff_5_lvl=3..}] run summon ender_dragon ~-7 ~ ~
execute if entity @s[scores={m_eff_5_lvl=3..}] run summon ender_dragon ~2 ~6 ~-1
execute if entity @s[scores={m_eff_5_lvl=3..}] run summon ender_dragon ~5 ~ ~5
execute if entity @s[scores={m_eff_5_lvl=3..}] run summon ender_dragon ~ ~7 ~-5
