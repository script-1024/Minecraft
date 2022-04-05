tag @a[distance=..40,scores={m_shark_load=-1..0}] add m_jump_target
tag @e[tag=!m_nokill,type=#mobs,distance=..40] add m_jump_target

tag @e[tag=m_jump_target,limit=1,sort=nearest] add m_jump_target1
tag @e[tag=m_jump_target1,limit=1,sort=nearest] remove m_jump_target
tag @e[tag=m_jump_target,limit=1,sort=nearest] add m_jump_target2
tag @e[tag=m_jump_target2,limit=1,sort=nearest] remove m_jump_target
tag @e[tag=m_jump_target,limit=1,sort=nearest] add m_jump_target3
tag @e[tag=m_jump_target3,limit=1,sort=nearest] remove m_jump_target
tag @e[tag=m_jump_target,limit=1,sort=nearest] add m_jump_target4
tag @e[tag=m_jump_target4,limit=1,sort=nearest] remove m_jump_target
tag @e[tag=m_jump_target,limit=1,sort=nearest] add m_jump_target5
tag @e[tag=m_jump_target5,limit=1,sort=nearest] remove m_jump_target

scoreboard players set @e[tag=m_jump_target1,distance=..40] m_shark_jmp_prep 16
scoreboard players set @e[tag=m_jump_target2,distance=..40] m_shark_jmp_prep 46
scoreboard players set @e[tag=m_jump_target3,distance=..40] m_shark_jmp_prep 71
scoreboard players set @e[tag=m_jump_target4,distance=..40] m_shark_jmp_prep 101
scoreboard players set @e[tag=m_jump_target5,distance=..40] m_shark_jmp_prep 131


tag @e[tag=m_jump_target] remove m_jump_target
tag @e[tag=m_jump_target1] remove m_jump_target1
tag @e[tag=m_jump_target2] remove m_jump_target2
tag @e[tag=m_jump_target3] remove m_jump_target3
tag @e[tag=m_jump_target4] remove m_jump_target4
tag @e[tag=m_jump_target5] remove m_jump_target5
