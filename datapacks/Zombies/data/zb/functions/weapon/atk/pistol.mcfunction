# 射擊發生
scoreboard players set @s player.wp.fired 5

execute if score @s player.select matches 1 if score @s player.wp_1.am.mag matches 1.. run scoreboard players remove @s player.wp_1.am.mag 1
execute if score @s player.select matches 1 if score @s player.wp_1.am.mag matches 0 if score @s player.wp_1.am.total matches 1.. run function zb:weapon/reload_1

execute if score @s player.select matches 2 if score @s player.wp_2.am.mag matches 1.. run scoreboard players remove @s player.wp_2.am.mag 1
execute if score @s player.select matches 2 if score @s player.wp_2.am.mag matches 0 if score @s player.wp_2.am.total matches 1.. run function zb:weapon/reload_2

playsound entity.iron_golem.hurt player @s ~ ~ ~

#execute anchored eyes positioned ^ ^ ^1 run function zb:particle/pistol