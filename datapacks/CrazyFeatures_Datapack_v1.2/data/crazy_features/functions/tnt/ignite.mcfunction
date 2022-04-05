scoreboard players set @s m_tnt_stage 22
data merge entity @s {ArmorItems:[{},{},{},{}]}
summon tnt ~ ~ ~ {Fuse:39,Tags:[m_e_tnt],Motion:[0.0,0.1,0.03]}
playsound minecraft:entity.tnt.primed master @a
setblock ~ ~ ~ air
