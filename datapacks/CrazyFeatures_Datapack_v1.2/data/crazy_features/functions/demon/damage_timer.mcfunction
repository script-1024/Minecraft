scoreboard players remove @s m_damageTimer 1
execute if score @s m_damageTimer matches 1 unless entity @s[tag=m_isDead] run function demon:set_state/default
