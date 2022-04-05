execute as @e[tag=m_tnt_vil,limit=5,sort=nearest,distance=..1] at @s run tag @s add kill
execute as @e[tag=kill] at @s run tp @s ~ -10 ~
kill @e[tag=kill]
kill @e[tag=m_tnt_slot_1,limit=1,sort=nearest,distance=..1]
kill @e[tag=m_tnt_slot_2,limit=1,sort=nearest,distance=..1]
kill @e[tag=m_tnt_slot_3,limit=1,sort=nearest,distance=..1]
setblock ~ ~ ~ air
kill @s
