
particle minecraft:explosion ~ ~ ~ 1 1 1 0.1 5 force
playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1.0 1.0

execute if entity @s[scores={m_eff_3_lvl=1}] run particle block sponge ~ ~ ~ 1 1 1 0.1 40
execute if entity @s[scores={m_eff_3_lvl=2}] run particle block sponge ~ ~ ~ 3 1 3 0.1 120
execute if entity @s[scores={m_eff_3_lvl=3}] run particle block sponge ~ ~ ~ 5 2 5 0.1 250

setblock ~ ~ ~ wet_sponge

execute if entity @s[scores={m_eff_3_lvl=1}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace water
execute if entity @s[scores={m_eff_3_lvl=2}] run fill ~-10 ~-7 ~-10 ~10 ~7 ~10 air replace water
execute if entity @s[scores={m_eff_3_lvl=3}] run fill ~-20 ~-9 ~-20 ~20 ~9 ~20 air replace water
