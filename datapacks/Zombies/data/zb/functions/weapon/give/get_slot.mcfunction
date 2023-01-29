execute if score @s player.wp_1.id matches 1.. if score @s player.wp_2.id matches 1.. if score @s player.select matches 0..1 run function zb:weapon/give/1
execute if score @s player.wp_1.id matches 1.. if score @s player.wp_2.id matches 1.. if score @s player.select matches 2..8 run function zb:weapon/give/2

execute if score @s player.wp_1.id matches 1.. if score @s player.wp_2.id matches 0 run function zb:weapon/give/2
execute if score @s player.wp_1.id matches 0 run function zb:weapon/give/1