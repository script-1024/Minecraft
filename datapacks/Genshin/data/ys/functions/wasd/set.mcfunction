# 將角度轉換成 0..360
execute if score @s ys.direction matches ..-1 run scoreboard players add @s ys.direction 360

# 0
execute if score @s ys.direction matches 0..15 run function ys:wasd/out/1/w

# 45
execute if score @s ys.direction matches 30..60 run function ys:wasd/out/2/wa

# 90
execute if score @s ys.direction matches 75..105 run function ys:wasd/out/1/a

# 135
execute if score @s ys.direction matches 120..150 run function ys:wasd/out/2/sa

# 180
execute if score @s ys.direction matches 165..195 run function ys:wasd/out/1/s

# 225
execute if score @s ys.direction matches 210..240 run function ys:wasd/out/2/sd

# 270
execute if score @s ys.direction matches 255..285 run function ys:wasd/out/1/d

# 315
execute if score @s ys.direction matches 300..330 run function ys:wasd/out/2/wd

# 360
execute if score @s ys.direction matches 345..360 run function ys:wasd/out/1/w