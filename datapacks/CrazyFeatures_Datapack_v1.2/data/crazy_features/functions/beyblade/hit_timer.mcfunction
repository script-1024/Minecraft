
scoreboard players add @s m_bb_hit_timer 1

scoreboard players set @s[scores={m_bb_hit_timer=2}] m_bb_tilt 0
scoreboard players add @s[scores={m_bb_hit_timer=2..6}] m_bb_tilt 2
scoreboard players remove @s[scores={m_bb_hit_timer=7..16}] m_bb_tilt 1
scoreboard players set @s[scores={m_bb_hit_timer=16}] m_bb_hit_timer 0

scoreboard players set @s[scores={m_bb_hit_timer=22}] m_bb_tilt 0
scoreboard players add @s[scores={m_bb_hit_timer=22..25}] m_bb_tilt 3
scoreboard players add @s[scores={m_bb_hit_timer=26..27}] m_bb_tilt 2
scoreboard players remove @s[scores={m_bb_hit_timer=28..30}] m_bb_tilt 2
scoreboard players remove @s[scores={m_bb_hit_timer=31..40}] m_bb_tilt 1
scoreboard players set @s[scores={m_bb_hit_timer=45}] m_bb_hit_timer 0


scoreboard players set @s[scores={m_bb_hit_timer=52}] m_bb_tilt 0
scoreboard players add @s[scores={m_bb_hit_timer=52..54}] m_bb_tilt 5
scoreboard players add @s[scores={m_bb_hit_timer=55..59}] m_bb_tilt 2
scoreboard players remove @s[scores={m_bb_hit_timer=60..65}] m_bb_tilt 2
scoreboard players remove @s[scores={m_bb_hit_timer=66..69}] m_bb_tilt 4
scoreboard players remove @s[scores={m_bb_hit_timer=70..73}] m_bb_tilt 2
scoreboard players add @s[scores={m_bb_hit_timer=74..84}] m_bb_tilt 1
scoreboard players set @s[scores={m_bb_hit_timer=84}] m_bb_hit_timer 0
