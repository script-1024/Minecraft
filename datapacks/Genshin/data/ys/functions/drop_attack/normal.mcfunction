execute if data entity @s {FallFlying:0b} unless entity @e[tag=dpa,limit=1,sort=nearest,distance=..1.2] run summon bat ~ ~1 ~ {Tags:[dpa],NoGravity:1b,NoAI:1b,Silent:1b,ActiveEffects:[{Id:11b,ShowParticles:0b,Amplifier:4b,Duration:1000000},{Id:14b,ShowParticles:0b,Amplifier:0b,Duration:1000000}]}
execute if data entity @s {FallFlying:1b} unless entity @e[tag=dpa,limit=1,sort=nearest,distance=..6] run summon bat ^ ^-0.5 ^2 {Tags:[dpa],NoGravity:1b,NoAI:1b,Silent:1b,ActiveEffects:[{Id:11b,ShowParticles:0b,Amplifier:4b,Duration:1000000},{Id:14b,ShowParticles:0b,Amplifier:0b,Duration:1000000}]}

execute if data entity @s {FallFlying:0b} run tp @e[tag=dpa,limit=1,sort=nearest] ~ ~1 ~
execute if data entity @s {FallFlying:1b} run tp @e[tag=dpa,limit=1,sort=nearest] ^ ^-0.5 ^2
execute if entity @e[tag=dpa,limit=1,sort=nearest,nbt=!{HurtTime:0s}] run function ys:drop_attack/triggered