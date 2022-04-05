scoreboard players add @s m_deathTimer 1
execute if score @s m_deathTimer matches 2 run function crazy_features:demon/death/death_init
execute if score @s m_deathTimer matches 2 run function demon:set_state/green

execute if score @s m_deathTimer matches 13 run playsound minecraft:demon_fall master @a ~ ~ ~ 0.2 1.0
execute if score @s m_deathTimer matches 95 run playsound minecraft:demon_die master @a ~ ~ ~ 0.2 1.0

execute if score @s m_deathTimer matches 100 run function crazy_features:demon/death/death_particles
execute if score @s m_deathTimer matches 100 run function crazy_features:demon/kill
