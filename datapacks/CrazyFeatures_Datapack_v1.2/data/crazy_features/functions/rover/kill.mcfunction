kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:64b},OnGround:1b},distance=..2]
function rover:remove/this_model

tag @e[type=villager,tag=m_r_vil1,limit=1,sort=nearest] add kill
tag @e[type=villager,tag=m_r_vil2,limit=1,sort=nearest] add kill
tag @e[type=horse,tag=m_rover_seat,limit=1,sort=nearest] add kill
tp @e[type=villager,tag=kill] ~ -100 ~
tp @e[type=horse,tag=kill] ~ -100 ~
kill @e[type=villager,tag=kill]
kill @e[type=horse,tag=kill]
particle large_smoke ~ ~0.75 ~ 1.0 0.7 1.0 0.05 30 force
particle firework ~ ~1 ~ 0.9 0.5 0.9 0.05 10 force
