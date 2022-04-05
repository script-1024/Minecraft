
particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0.1 3 force


execute if entity @s[scores={m_eff_1_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id1"]}
execute if entity @s[scores={m_eff_1_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id2"]}
execute if entity @s[scores={m_eff_1_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id3"]}
execute if entity @s[scores={m_eff_1_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id4"]}
execute if entity @s[scores={m_eff_1_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id5"]}

execute if entity @s[scores={m_eff_1_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id6"]}
execute if entity @s[scores={m_eff_1_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id7"]}
execute if entity @s[scores={m_eff_1_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id8"]}
execute if entity @s[scores={m_eff_1_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id9"]}
execute if entity @s[scores={m_eff_1_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id10"]}


execute if entity @s[scores={m_eff_1_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id11"]}
execute if entity @s[scores={m_eff_1_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id12"]}
execute if entity @s[scores={m_eff_1_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id13"]}
execute if entity @s[scores={m_eff_1_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id14"]}
execute if entity @s[scores={m_eff_1_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id15"]}
execute if entity @s[scores={m_eff_1_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id2"]}
execute if entity @s[scores={m_eff_1_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id4"]}
execute if entity @s[scores={m_eff_1_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id6"]}
execute if entity @s[scores={m_eff_1_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id8"]}
execute if entity @s[scores={m_eff_1_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e1_spread","m_tnt_e1_spread_id10"]}


execute if entity @s[scores={m_eff_1_lvl=1}] run spreadplayers ~ ~ 2 5 false @e[tag=m_tnt_e1_spread]
execute if entity @s[scores={m_eff_1_lvl=2}] run spreadplayers ~ ~ 4 10 false @e[tag=m_tnt_e1_spread]
execute if entity @s[scores={m_eff_1_lvl=3}] run spreadplayers ~ ~ 6 20 false @e[tag=m_tnt_e1_spread]

execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id1] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;3608534]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id2] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:17,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;15783941]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id3] at @s run summon firework_rocket ~ ~ ~ {LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;15667199,5898211]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id4] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:23,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1b,Colors:[I;1802775]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id5] at @s run summon firework_rocket ~ ~ ~ {LifeTime:21,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;1186011,14061361]}]}}}}

execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id6] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:35,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;14355725,12441112]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id7] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:32,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;1182683,4830678],FadeColors:[I;2424736]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id8] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:37,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;1802775,5898211]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id9] at @s run summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1b,Colors:[I;14061361]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id10] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:29,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Trail:1b,Flicker:1b,Colors:[I;1186011]}]}}}}


execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id11] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;14400282,14028553],FadeColors:[I;13172500]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id12] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:42,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;15667199,5898211]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id13] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:44,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;14408667,16777215,0]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id14] at @s run summon firework_rocket ~ ~ ~ {LifeTime:46,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Trail:1b,Colors:[I;11223219]}]}}}}
execute as @e[type=armor_stand,tag=m_tnt_e1_spread_id15] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:50,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1b,Colors:[I;1738510,9174845],FadeColors:[I;3786510]}]}}}}


kill @e[tag=m_tnt_e1_spread]
