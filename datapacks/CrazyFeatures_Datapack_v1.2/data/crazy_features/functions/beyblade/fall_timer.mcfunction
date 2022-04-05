
scoreboard players add @s m_bb_fall_timer 1

scoreboard players set @s[scores={m_bb_fall_timer=2}] m_bb_tilt 0
scoreboard players add @s[scores={m_bb_fall_timer=2..7}] m_bb_tilt 1
scoreboard players add @s[scores={m_bb_fall_timer=8..12}] m_bb_tilt 2
scoreboard players add @s[scores={m_bb_fall_timer=13..18}] m_bb_tilt 4
