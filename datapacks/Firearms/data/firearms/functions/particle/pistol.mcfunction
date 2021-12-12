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