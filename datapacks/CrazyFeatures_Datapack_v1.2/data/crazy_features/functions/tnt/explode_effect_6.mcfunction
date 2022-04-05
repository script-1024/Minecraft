playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 5.0 1.0
particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.4 50 force

execute as @s at @s if entity @s[scores={m_eff_6_lvl=1}] run execute as @a[distance=5..20,limit=1,sort=nearest] at @s run summon tnt ~ ~ ~ {Fuse:4,Tags:[m_tnt_tp]}
execute as @s at @s if entity @s[scores={m_eff_6_lvl=2}] run execute as @a[distance=5..40,limit=3,sort=nearest] at @s run summon tnt ~ ~ ~ {Fuse:4,Tags:[m_tnt_tp]}
execute as @s at @s if entity @s[scores={m_eff_6_lvl=3}] run execute as @a[distance=5..60,limit=5,sort=nearest] at @s run summon tnt ~ ~ ~ {Fuse:4,Tags:[m_tnt_tp]}
execute as @e[type=tnt,tag=m_tnt_tp] at @s run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.4 20 force
