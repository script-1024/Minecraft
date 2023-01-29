execute if score @s player.wp_2.id matches 1 run scoreboard players operation @s player.wp.am.tmp = #mag_p const
execute if score @s player.wp_2.id matches 2 run scoreboard players operation @s player.wp.am.tmp = #mag_r const

scoreboard players operation @s player.wp_2.am.total += @s player.wp_2.am.mag
scoreboard players operation @s player.wp_2.am.total -= @s player.wp.am.tmp

scoreboard players operation @s player.wp_2.am.mag = @s player.wp.am.tmp
execute if score @s player.wp_2.am.total matches ..-1 run scoreboard players operation @s player.wp_2.am.mag += @s player.wp_2.am.total
execute if score @s player.wp_2.am.total matches ..-1 run scoreboard players set @s player.wp_2.am.total 0

scoreboard players set @s player.reload 0