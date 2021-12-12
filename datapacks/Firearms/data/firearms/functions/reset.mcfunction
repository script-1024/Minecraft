tag @s remove shooter
execute unless data entity @s Inventory[{tag:{GunType:"pistol"}}] run tag @s remove own_pistol
execute unless data entity @s Inventory[{tag:{GunType:"rifle"}}] run tag @s remove own_rifle
execute unless data entity @s Inventory[{tag:{GunType:"shotgun"}}] run tag @s remove own_shotgun
execute unless data entity @s Inventory[{tag:{GunType:"rocket"}}] run tag @s remove own_rocket
execute unless data entity @s Inventory[{tag:{GunType:"sniper"}}] run tag @s remove own_sniper