execute as @s[scores={m_piston_state=1}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 0.4 1.0
scoreboard players set @s[scores={m_piston_state=1,m_block_state=0}] m_piston_timer 1
scoreboard players operation @s[scores={m_piston_state=1,m_block_state=1}] m_piston_timer = @s m_p_block_save
scoreboard players add @s[scores={m_piston_state=1,m_block_state=1}] m_piston_timer 1
scoreboard players add @s[scores={m_piston_state=1,m_block_state=1}] m_p_block_save 1
function crazy_features:piston/retract_timer
