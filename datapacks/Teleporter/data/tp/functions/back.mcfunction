scoreboard players set @s back 0
scoreboard players enable @a back

#execute if entity @s[tag=!wait] run tellraw @s "\u00a7c警告> \u00a74死亡點不存在或已經過期"
tellraw @s "\u00a7b提示> \u00a7e正在回到上一個存檔點..."

execute run scoreboard players operation @s tp.x = @s d.x
execute run scoreboard players operation @s tp.y = @s d.y
execute run scoreboard players operation @s tp.z = @s d.z

execute at @s if score @s d.dimension matches -1 in the_nether run tp 0 1000 0
execute at @s if score @s d.dimension matches 0 in overworld run tp 0 1000 0
execute at @s if score @s d.dimension matches 1 in the_end run tp 0 1000 0

execute run function tp:tp

execute run tag @s remove wait

scoreboard players set @s tp.death 0