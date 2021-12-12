# 完成射擊

    summon snowball ^ ^ ^-0.2 {Tags:[bullet], Item:{id:"minecraft:stone_button", Count:1b}, Motion:[0d, 0d, 0.05d], LeftOwner:1b}
    execute as @e[type=snowball, limit=1] run data modify entity @s Owner set from entity @p[scores={fired=1..,break=1..}] UUID
    execute as @e[tag=bullet] at @s as @p[scores={break=1.., fired=1..}] run scoreboard players add @s bullet 1

# ...