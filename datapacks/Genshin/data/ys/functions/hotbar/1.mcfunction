summon armor_stand ~ ~ ~ {Tags:[h1],Silent:1b,NoBasePlate:1b,Small:1b,Marker:1b,Invisible:1b}

# P1
item replace entity @e[limit=1,sort=nearest,tag=h1] armor.head with carrot_on_a_stick{ys:1,p1:1,CustomModelData:5,display:{Name:'"§e1P"'}}
execute if score @s ys.p1 matches 1.. as @e[limit=1,sort=nearest,tag=h1] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @p ys.p1
item replace entity @s hotbar.2 from entity @e[limit=1,sort=nearest,tag=h1] armor.head

# P2
item replace entity @e[limit=1,sort=nearest,tag=h1] armor.head with carrot_on_a_stick{ys:1,p2:1,CustomModelData:6,display:{Name:'"§e2P"'}}
execute if score @s ys.p2 matches 1.. as @e[limit=1,sort=nearest,tag=h1] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @p ys.p2
item replace entity @s hotbar.3 from entity @e[limit=1,sort=nearest,tag=h1] armor.head

# P3
item replace entity @e[limit=1,sort=nearest,tag=h1] armor.head with carrot_on_a_stick{ys:1,p3:1,CustomModelData:7,display:{Name:'"§e3P"'}}
execute if score @s ys.p3 matches 1.. as @e[limit=1,sort=nearest,tag=h1] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @p ys.p3
item replace entity @s hotbar.4 from entity @e[limit=1,sort=nearest,tag=h1] armor.head

# P4
item replace entity @e[limit=1,sort=nearest,tag=h1] armor.head with carrot_on_a_stick{ys:1,p4:1,CustomModelData:8,display:{Name:'"§e4P"'}}
execute if score @s ys.p4 matches 1.. as @e[limit=1,sort=nearest,tag=h1] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @p ys.p4
item replace entity @s hotbar.5 from entity @e[limit=1,sort=nearest,tag=h1] armor.head


kill @e[limit=1,sort=nearest,tag=h1]