scoreboard players add @s m_launchTimer 1
effect give @s[scores={m_launchTimer=2}] levitation 1 38 true
effect clear @s[scores={m_launchTimer=6..}] levitation
scoreboard players set @s[scores={m_launchTimer=6..}] m_launchTimer 0
