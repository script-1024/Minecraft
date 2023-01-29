# 取得當前百分比血量
# call | tick

# 設定初始血量
execute unless score @s entity.health.max matches 0.. run scoreboard players operation @s entity.health.max = @s entity.health

# 不能超過最大值
execute if score @s entity.health.max matches ..0 run scoreboard players set @s entity.health.max 1
execute if score @s entity.health.max matches 1.. if score @s entity.health > @s entity.health.max run scoreboard players operation @s entity.health = @s entity.health.max

scoreboard players operation @s entity.health.percent = @s entity.health
scoreboard players operation @s entity.health.percent *= #100 const
scoreboard players operation @s entity.health.percent /= @s entity.health.max

# 真分數(0<n<1)無條件進位
execute if score @s entity.health.percent matches 0 unless score @s entity.health matches 0 run scoreboard players add @s entity.health.percent 1