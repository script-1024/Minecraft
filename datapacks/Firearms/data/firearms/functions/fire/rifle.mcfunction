# 射擊發生

    execute as @e[tag=shooting] at @s run scoreboard players add @p[tag=own_rifle] fired 1
    execute as @e[tag=shooting, nbt={HandItems:[{tag:{GunType:"rifle"}}]}] at @s run item replace entity @p[tag=own_rifle] weapon.mainhand from entity @s weapon.mainhand
    execute as @e[tag=shooting] run data merge entity @s {HandItems:[]}
    execute as @p[scores={fired=1..}, tag=own_rifle] run scoreboard players remove @s rifle_ammo 1
    execute as @p[scores={fired=1..}] at @s anchored eyes positioned ^ ^ ^1 run function firearms:particle/rifle
    execute as @p[scores={fired=1..}] at @s run playsound entity.firework_rocket.large_blast player @s ~ ~ ~

# ...

# 給予實體傷害

    execute at @p[scores={fired=1..}] as @e[tag=target, limit=1, sort=nearest] at @s if entity @p[scores={fired=1..}, distance=..400] as @p[scores={fired=1..}] run scoreboard players remove @s target_health 60
    execute as @p[scores={fired=1..}] at @s as @e[tag=target, limit=1, sort=nearest] store result entity @s Health float 0.1 run scoreboard players get @p[scores={fired=1..}] target_health
    execute as @p[scores={fired=1..}] at @s as @e[tag=target, limit=1, sort=nearest] run effect give @s instant_damage 1 125 true
    execute as @p[scores={fired=1..}] at @s as @e[tag=target, limit=1, sort=nearest] run effect give @s instant_health 1 125 true

# ...