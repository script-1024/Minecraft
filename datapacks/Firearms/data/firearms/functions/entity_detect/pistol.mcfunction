# 實體檢測

    # 防止穿墻

        execute if entity @s[distance=..70] unless block ~ ~ ~ #minecraft:incomplete run execute at @s positioned ^ ^ ^1.5 run function firearms:entity_detect/pistol

    # 找到符合條件的目標

        execute if entity @s[distance=..70] unless entity @s[dx=0, dy=0, dz=0] if entity @e[tag=!shooting, dx=0, dy=0, dz=0] run tag @e[dx=0, dy=0, dz=0] add target

    # 移除不符條件的目標

        execute if entity @s[distance=..70] unless entity @s[dx=0, dy=0, dz=0] unless entity @e[tag=!shooting, dx=0, dy=0, dz=0] run tag @e[tag=target, limit=1, sort=nearest] remove target

    # 往前半格再次執行
            
        execute if entity @s[distance=00..10] positioned ^ ^-0.0000 ^0.500 run function firearms:entity_detect/pistol
        execute if entity @s[distance=10..20] positioned ^ ^-0.0150 ^0.500 run function firearms:entity_detect/pistol
        execute if entity @s[distance=20..30] positioned ^ ^-0.0165 ^0.475 run function firearms:entity_detect/pistol
        execute if entity @s[distance=30..40] positioned ^ ^-0.0180 ^0.450 run function firearms:entity_detect/pistol
        execute if entity @s[distance=40..50] positioned ^ ^-0.0160 ^0.425 run function firearms:entity_detect/pistol
        execute if entity @s[distance=50..60] positioned ^ ^-0.0165 ^0.400 run function firearms:entity_detect/pistol
        execute if entity @s[distance=60..70] positioned ^ ^-0.0170 ^0.375 run function firearms:entity_detect/pistol

    # ...

# ...