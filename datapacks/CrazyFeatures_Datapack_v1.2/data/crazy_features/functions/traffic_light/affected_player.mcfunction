scoreboard players set @s m_tlp_color 0
scoreboard players set @s[tag=m_tl_green] m_tlp_color 1
scoreboard players set @s[tag=m_tl_red] m_tlp_color 2
tag @s remove m_tl_green
tag @s remove m_tl_red

kill @s[scores={m_tlp_color=2,m_walk=20..}]
kill @s[scores={m_tlp_color=2,m_sneak=5..}]
kill @s[scores={m_tlp_color=2,m_sprint=20..}]


title @s times 0 1 0
title @s[scores={m_tlp_color=1}] actionbar {"text":"Green light","color":"dark_green","bold":"true"}
title @s[scores={m_tlp_color=2}] actionbar {"text":"Red light","color":"dark_red","bold":"true"}
scoreboard players remove @s m_in_light 1

title @s[scores={m_in_light=0}] actionbar {"text":""}
title @s[scores={m_tlp_color=0}] actionbar {"text":""}
