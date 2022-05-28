execute if score timer ct.time matches 0..2147483646 run scoreboard players add timer ct.time 1
execute if score timer ct.time matches 2147483647 run scoreboard players set timer ct.time 0

scoreboard players add #math ct.time 1

scoreboard players add #0 ct.time 1
scoreboard players add #1 ct.time 1
scoreboard players add #2 ct.time 1
scoreboard players add #3 ct.time 1
scoreboard players add #4 ct.time 1
scoreboard players add #5 ct.time 1
scoreboard players add #6 ct.time 1
scoreboard players add #7 ct.time 1
scoreboard players add #8 ct.time 1
scoreboard players add #9 ct.time 1

execute unless entity @e[tag=c_m] run summon chest_minecart 0 2000 0 {NoGravity:1b, Invulnerable:1b, Silent:1b, Tags:[c_m]}

schedule function ct:timer 0.1s