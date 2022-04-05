scoreboard players add @s[nbt={Motion:[0.0,0.0,0.0]},scores={m_moveTimer=..6}] m_moveTimer 2
scoreboard players remove @s[scores={m_moveTimer=1..}] m_moveTimer 1
data merge entity @s {Fire:-10s}
