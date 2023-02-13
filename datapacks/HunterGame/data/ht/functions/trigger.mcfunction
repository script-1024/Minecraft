scoreboard players enable @a showTargetDistance

execute if score @s showTargetDistance matches 2.. run scoreboard players set @s showTargetDistance 0
execute if score @s showTargetDistance matches 1 unless entity @s[tag=std] run tellraw @s "§b提示> §6[顯示目標距離]§e已被強制開啟"
execute if score @s showTargetDistance matches 1 unless entity @s[tag=std] run tag @s add std
execute if score @s showTargetDistance matches 0 if entity @s[tag=std] run tellraw @s "§b提示> §6[顯示目標距離]§e已恢復默認設置"
execute if score @s showTargetDistance matches 0 if entity @s[tag=std] run tag @s remove std

scoreboard players enable @a runner
execute as @a unless score @s runner matches -1.. run scoreboard players set @s runner -1
execute as @a if score @s runner matches 0.. run function ht:runner/set_max

scoreboard players enable @a time
execute as @a unless score @s runner matches 0.. run scoreboard players set @s runner 0
execute as @a if score @s runner matches 1.. run function ht:set_time