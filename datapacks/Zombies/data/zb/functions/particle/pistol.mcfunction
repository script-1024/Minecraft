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

execute unless entity @s[distance=..70] run scoreboard players add @s break 1
execute unless block ~ ~ ~ #minecraft:incomplete run scoreboard players add @s break 1
execute unless entity @s[dx=0, dy=0, dz=0] if entity @e[tag=!shooting, dx=0, dy=0, dz=0] run scoreboard players add @s break 1
execute unless score @s break matches 1.. if entity @s[distance=..70] run particle crit ~ ~ ~ 0 0 0 0 0 force

execute as @s if score @s break matches 1.. run function firearms:bullet
execute as @s if score @s break matches 1.. run schedule function firearms:fired 0.5s append

# 往前再次執行，並計算下墜

    execute if entity @s[distance=00..10] unless score @s break matches 1.. positioned ^ ^-0.000 ^1.00 run function firearms:particle/pistol
    execute if entity @s[distance=10..20] unless score @s break matches 1.. positioned ^ ^-0.006 ^1.00 run function firearms:particle/pistol
    execute if entity @s[distance=20..30] unless score @s break matches 1.. positioned ^ ^-0.012 ^0.95 run function firearms:particle/pistol
    execute if entity @s[distance=30..40] unless score @s break matches 1.. positioned ^ ^-0.022 ^0.90 run function firearms:particle/pistol
    execute if entity @s[distance=40..50] unless score @s break matches 1.. positioned ^ ^-0.032 ^0.85 run function firearms:particle/pistol
    execute if entity @s[distance=50..60] unless score @s break matches 1.. positioned ^ ^-0.042 ^0.80 run function firearms:particle/pistol
    execute if entity @s[distance=60..70] unless score @s break matches 1.. positioned ^ ^-0.052 ^0.75 run function firearms:particle/pistol

# ...