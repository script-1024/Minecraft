# 刷新玩家的快捷欄
# call | player/main

advancement revoke @s only zb:zombies/inventory_change

# 鐵劍
execute if entity @s[gamemode=!creative] run item replace entity @s hotbar.0 with iron_sword{zb:1,wp:1}

# 武器 1
scoreboard players operation @s player.wp_1.ani = @s player.wp_1.id
scoreboard players operation @s player.wp_1.ani *= #1000 const
execute if score @s player.aim matches 1 run scoreboard players operation @s player.wp_1.ani += #100 const

execute if score @s player.wp_1.id matches 0 run item replace entity @s hotbar.1 with gray_dye{display:{Name:'"§c武器 #1"'},empty:1}
execute if score @s player.wp_1.id matches 1.. run summon armor_stand ~ ~ ~ {Tags:[wp1,am],Invisible:true,NoGravity:true,Invulnerable:true,Small:true,NoBasePlate:true}
execute if score @s player.wp_1.id matches 1 run data modify entity @e[tag=wp1,limit=1,sort=nearest] HandItems[0] set from storage zb wp[].pistol[1]
execute if score @s player.wp_1.id matches 2 run data modify entity @e[tag=wp1,limit=1,sort=nearest] HandItems[0] set from storage zb wp[].rifle[1]
execute if score @s player.wp_1.id matches 3 run data modify entity @e[tag=wp1,limit=1,sort=nearest] HandItems[0] set from storage zb wp[].smg[1]
execute if score @s player.wp_1.id matches 1.. if score @s player.wp_1.am.mag matches 1.. store result entity @e[tag=wp1,limit=1,sort=nearest] HandItems[0].Count byte 1 run scoreboard players get @s player.wp_1.am.mag
execute if score @s player.wp_1.id matches 1.. store result entity @e[tag=wp1,limit=1,sort=nearest] HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s player.wp_1.ani
execute if score @s player.wp_1.id matches 1.. run item replace entity @s hotbar.1 from entity @e[tag=wp1,limit=1,sort=nearest] weapon
execute if score @s player.wp_1.id matches 1.. run kill @e[tag=wp1,limit=1,sort=nearest]

# 武器 2
scoreboard players operation @s player.wp_2.ani = @s player.wp_2.id
scoreboard players operation @s player.wp_2.ani *= #1000 const
execute if score @s player.aim matches 1 run scoreboard players operation @s player.wp_2.ani += #100 const

execute if score @s player.wp_2.id matches 0 run item replace entity @s hotbar.2 with gray_dye{display:{Name:'"§c武器 #2"'},empty:1}
execute if score @s player.wp_2.id matches 1.. run summon armor_stand ~ ~ ~ {Tags:[wp2,am],Invisible:true,NoGravity:true,Invulnerable:true,Small:true,NoBasePlate:true}
execute if score @s player.wp_2.id matches 1 run data modify entity @e[tag=wp2,limit=1,sort=nearest] HandItems[0] set from storage zb wp[].pistol[1]
execute if score @s player.wp_2.id matches 2 run data modify entity @e[tag=wp2,limit=1,sort=nearest] HandItems[0] set from storage zb wp[].rifle[1]
execute if score @s player.wp_2.id matches 3 run data modify entity @e[tag=wp2,limit=1,sort=nearest] HandItems[0] set from storage zb wp[].smg[1]
execute if score @s player.wp_2.id matches 1.. if score @s player.wp_2.am.mag matches 1.. store result entity @e[tag=wp2,limit=1,sort=nearest] HandItems[0].Count byte 1 run scoreboard players get @s player.wp_2.am.mag
execute if score @s player.wp_2.id matches 1.. store result entity @e[tag=wp2,limit=1,sort=nearest] HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s player.wp_2.ani
execute if score @s player.wp_2.id matches 1.. run item replace entity @s hotbar.2 from entity @e[tag=wp2,limit=1,sort=nearest] weapon
execute if score @s player.wp_2.id matches 1.. run kill @e[tag=wp2,limit=1,sort=nearest]

# 空位
execute if entity @s[gamemode=!creative] run item replace entity @s hotbar.3 with air
execute if entity @s[gamemode=!creative] run item replace entity @s hotbar.4 with air
execute if entity @s[gamemode=!creative] run item replace entity @s hotbar.5 with air

# 配件
execute if entity @s[gamemode=!creative] if score @s player.buff_1 matches 0 run item replace entity @s hotbar.6 with gray_dye{display:{Name:'"§c配件 #1"'},empty:1}
execute if entity @s[gamemode=!creative] if score @s player.buff_2 matches 0 run item replace entity @s hotbar.7 with gray_dye{display:{Name:'"§c配件 #2"'},empty:1}
execute if entity @s[gamemode=!creative] if score @s player.buff_3 matches 0 run item replace entity @s hotbar.8 with gray_dye{display:{Name:'"§c配件 #3"'},empty:1}