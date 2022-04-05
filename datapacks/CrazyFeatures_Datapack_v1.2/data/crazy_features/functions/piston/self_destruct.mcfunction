particle explosion ~ ~0.5 ~ 4 4 4 0.1 10 force
particle large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10 force
execute as @s[scores={m_piston_state=0}] at @s run execute as @e[type=armor_stand,tag=m_piston_ext,distance=..100] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID at @s run setblock ~ ~ ~ air
execute at @s run execute as @e[type=armor_stand,tag=m_piston_ext,distance=..100] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID run kill @s
kill @s
summon creeper ~ ~-1 ~ {Fuse:0,ExplosionRadius:15}
