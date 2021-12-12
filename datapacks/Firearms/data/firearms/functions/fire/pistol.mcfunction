# 射擊發生

    execute as @e[tag=shooting] at @s run scoreboard players add @p[tag=own_pistol] fired 1
    execute as @e[tag=shooting, nbt={HandItems:[{tag:{GunType:"pistol"}}]}] at @s run item replace entity @p[tag=own_pistol] weapon.mainhand from entity @s weapon.mainhand
    execute as @e[tag=shooting] run data merge entity @s {HandItems:[]}
    execute as @p[scores={fired=1..}, tag=own_pistol] run scoreboard players remove @s pistol_ammo 1
    execute as @p[scores={fired=1..}] at @s anchored eyes positioned ^ ^ ^1 run function firearms:particle/pistol
    execute as @p[scores={fired=1..}] at @s run playsound entity.iron_golem.hurt player @s ~ ~ ~

# ...

# 給予實體傷害

    # 傷害衰減

        execute at @p[scores={fired=1..}] as @e[tag=target, limit=1, sort=nearest] at @s if entity @p[scores={fired=1..}, distance=00..30] as @p[scores={fired=1..}] run scoreboard players remove @s target_health 60
        execute at @p[scores={fired=1..}] as @e[tag=target, limit=1, sort=nearest] at @s if entity @p[scores={fired=1..}, distance=30..40] as @p[scores={fired=1..}] run scoreboard players remove @s target_health 56
        execute at @p[scores={fired=1..}] as @e[tag=target, limit=1, sort=nearest] at @s if entity @p[scores={fired=1..}, distance=40..50] as @p[scores={fired=1..}] run scoreboard players remove @s target_health 52

        # 超出有效射程，傷害不可靠

            execute at @p[scores={fired=1..}] as @e[tag=target, limit=1, sort=nearest] at @s if entity @p[scores={fired=1..}, distance=50..55] as @p[scores={fired=1..}] run scoreboard players remove @s target_health 44
            execute at @p[scores={fired=1..}] as @e[tag=target, limit=1, sort=nearest] at @s if entity @p[scores={fired=1..}, distance=55..60] as @p[scores={fired=1..}] run scoreboard players remove @s target_health 36
            execute at @p[scores={fired=1..}] as @e[tag=target, limit=1, sort=nearest] at @s if entity @p[scores={fired=1..}, distance=60..65] as @p[scores={fired=1..}] run scoreboard players remove @s target_health 28
            execute at @p[scores={fired=1..}] as @e[tag=target, limit=1, sort=nearest] at @s if entity @p[scores={fired=1..}, distance=65..70] as @p[scores={fired=1..}] run scoreboard players remove @s target_health 20

        # ...

    # ...

    execute as @p[scores={fired=1..}] at @s as @e[tag=target, limit=1, sort=nearest] store result entity @s Health float 0.1 run scoreboard players get @p[scores={fired=1..}] target_health
    execute as @p[scores={fired=1..}] at @s as @e[tag=target, limit=1, sort=nearest] run effect give @s instant_damage 1 125 true
    execute as @p[scores={fired=1..}] at @s as @e[tag=target, limit=1, sort=nearest] run effect give @s instant_health 1 125 true

# ...