execute unless score @s ys.burstCd matches -1..3000 run scoreboard players set @s ys.burstCd 150

execute if score @s ys.burstCd matches -1 run tag @s remove noBurst
execute if score @s ys.burstCd matches -1 run function ys:char/kazuha/give
