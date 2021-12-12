# 實體檢測

    # 防止穿墻

        execute if entity @s[distance=..400] unless block ~ ~ ~ #minecraft:incomplete run execute at @s positioned ^ ^ ^1.5 run function firearms:entity_detect/rifle

    # 找到符合條件的目標

        execute if entity @s[distance=..400] unless entity @s[dx=0, dy=0, dz=0] if entity @e[tag=!shooting, dx=0, dy=0, dz=0] run tag @e[dx=0, dy=0, dz=0] add target

    # 移除不符條件的目標

        execute if entity @s[distance=..400] unless entity @s[dx=0, dy=0, dz=0] unless entity @e[tag=!shooting, dx=0, dy=0, dz=0] run tag @e[tag=target, limit=1, sort=nearest] remove target

    # 往前半格再次執行

        execute if entity @s[distance=..400] positioned ^ ^ ^0.5 run function firearms:entity_detect/rifle

    # ...

# ...