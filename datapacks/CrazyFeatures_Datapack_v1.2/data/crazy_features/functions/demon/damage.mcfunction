
function demon:set_state/red
scoreboard players set @s m_damageTimer 6
scoreboard players remove @s m_mobHealth 26
scoreboard players set @s[scores={m_mobHealth=..0,m_deathTimer=0}] m_deathTimer 1

particle large_smoke ~ ~1.5 ~ 0.4 0.4 0.4 0.05 5 force
