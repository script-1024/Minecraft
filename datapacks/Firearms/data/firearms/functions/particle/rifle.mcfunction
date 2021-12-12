execute unless entity @s[distance=..400] run scoreboard players add @s break 1
execute unless block ~ ~ ~ #minecraft:incomplete run scoreboard players add @s break 1
execute unless entity @s[dx=0, dy=0, dz=0] if entity @e[tag=!shooting, dx=0, dy=0, dz=0] run scoreboard players add @s break 1
execute unless score @s break matches 1.. if entity @s[distance=..400] run particle firework ~ ~ ~ 0 0 0 0 0 force

execute as @s if score @s break matches 1.. run function firearms:bullet
execute as @s if score @s break matches 1.. run schedule function firearms:fired 0.2s append

# 往前再次執行

    execute if entity @s[distance=..400] unless score @s break matches 1.. positioned ^ ^ ^2 run function firearms:particle/rifle

# ...