tag @s remove wait
scoreboard players add place dun.room 1

# 房間
fill ~7 ~6 ~7 ~-7 ~-1 ~-7 stone_bricks
fill ~6 ~7 ~6 ~-6 ~7 ~-6 stone_bricks
fill ~6 ~6 ~6 ~-6 ~ ~-6 air

# 門
fill ~2 ~4 ~7 ~-2 ~ ~7 air
fill ~2 ~4 ~-7 ~-2 ~ ~-7 air
fill ~7 ~4 ~2 ~7 ~ ~-2 air
fill ~-7 ~4 ~2 ~-7 ~ ~-2 air

# 地面木板
fill ~7 ~-1 ~1 ~-7 ~-1 ~-1 spruce_planks
fill ~1 ~-1 ~7 ~-1 ~-1 ~-7 spruce_planks
fill ~3 ~-1 ~3 ~-3 ~-1 ~-3 spruce_planks

# 柱子
fill ~5 ~6 ~5 ~6 ~ ~6 spruce_log[axis=y]
fill ~5 ~ ~4 ~6 ~ ~4 stone_brick_stairs[facing=south]
fill ~4 ~ ~5 ~4 ~ ~6 stone_brick_stairs[facing=east]
fill ~5 ~6 ~4 ~6 ~6 ~4 stone_brick_stairs[facing=south,half=top]
fill ~4 ~6 ~5 ~4 ~6 ~6 stone_brick_stairs[facing=east,half=top]

fill ~5 ~6 ~-5 ~6 ~ ~-6 spruce_log[axis=y]
fill ~5 ~ ~-4 ~6 ~ ~-4 stone_brick_stairs[facing=north]
fill ~4 ~ ~-5 ~4 ~ ~-6 stone_brick_stairs[facing=east]
fill ~5 ~6 ~-4 ~6 ~6 ~-4 stone_brick_stairs[facing=north,half=top]
fill ~4 ~6 ~-5 ~4 ~6 ~-6 stone_brick_stairs[facing=east,half=top]

fill ~-5 ~6 ~5 ~-6 ~ ~6 spruce_log[axis=y]
fill ~-5 ~ ~4 ~-6 ~ ~4 stone_brick_stairs[facing=south]
fill ~-4 ~ ~5 ~-4 ~ ~6 stone_brick_stairs[facing=west]
fill ~-5 ~6 ~4 ~-6 ~6 ~4 stone_brick_stairs[facing=south,half=top]
fill ~-4 ~6 ~5 ~-4 ~6 ~6 stone_brick_stairs[facing=west,half=top]

fill ~-5 ~6 ~-5 ~-6 ~ ~-6 spruce_log[axis=y]
fill ~-5 ~ ~-4 ~-6 ~ ~-4 stone_brick_stairs[facing=north]
fill ~-4 ~ ~-5 ~-4 ~ ~-6 stone_brick_stairs[facing=west]
fill ~-5 ~6 ~-4 ~-6 ~6 ~-4 stone_brick_stairs[facing=north,half=top]
fill ~-4 ~6 ~-5 ~-4 ~6 ~-6 stone_brick_stairs[facing=west,half=top]

# 屋頂標記
#fill ~7 ~8 ~ ~-7 ~8 ~ white_wool
#fill ~ ~8 ~7 ~ ~8 ~-7 white_wool
fill ~1 ~8 ~1 ~-1 ~8 ~-1 yellow_wool

# 照明
fill ~7 ~8 ~7 ~-7 ~-1 ~-7 light[level=15] replace air

# 生成 門

    # 北面
    execute positioned ~ ~ ~-8 unless entity @e[tag=door,distance=..2] run function dun:gen/door/summon

    # 南面
    execute positioned ~ ~ ~8 unless entity @e[tag=door,distance=..2] run function dun:gen/door/summon

    # 西面
    execute positioned ~-8 ~ ~ unless entity @e[tag=door,distance=..2] run function dun:gen/door/summon

    # 東面
    execute positioned ~8 ~ ~ unless entity @e[tag=door,distance=..2] run function dun:gen/door/summon