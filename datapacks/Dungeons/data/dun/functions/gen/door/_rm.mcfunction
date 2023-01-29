# 校正方向
execute as @s at @s rotated as @s rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 清除門
fill ^2 ^4 ^2 ^-2 ^-1 ^-2 air
fill ^6 ^8 ^6 ^-6 ^8 ^-6 air replace white_wool
fill ^1 ^8 ^1 ^-1 ^8 ^-1 air

execute if entity @s[tag=door] run kill @s