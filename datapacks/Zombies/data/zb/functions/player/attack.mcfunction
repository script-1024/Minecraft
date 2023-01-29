scoreboard players set @s player.atk 0
item replace entity @s weapon.offhand with air

# 武器 1
execute if score @s player.select matches 1 if score @s player.wp_1.am.total matches 1.. if score @s player.wp_1.id matches 1 run function zb:weapon/atk/pistol
execute if score @s player.select matches 1 if score @s player.wp_1.am.total matches 1.. if score @s player.wp_1.id matches 2 run function zb:weapon/atk/rifle

# 武器 2
execute if score @s player.select matches 2 if score @s player.wp_2.am.total matches 1.. if score @s player.wp_2.id matches 1 run function zb:weapon/atk/pistol
execute if score @s player.select matches 2 if score @s player.wp_2.am.total matches 1.. if score @s player.wp_2.id matches 2 run function zb:weapon/atk/rifle