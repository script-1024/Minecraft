execute unless score @s ys.burstCd matches -2147483648..2147483647 run scoreboard players set @s ys.burstCd 150

execute if score @s ys.burstCd matches -1 run tag @s remove noBurst
execute if score @s ys.burstCd matches -1 run function ys:kazuha/give
