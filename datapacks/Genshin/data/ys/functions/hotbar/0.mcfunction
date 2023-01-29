summon armor_stand ~ ~ ~ {Tags:[h0],Silent:1b,NoBasePlate:1b,Small:1b,Marker:1b,Invisible:1b}

# 元素戰技
item replace entity @e[limit=1,sort=nearest,tag=h0] armor.head with carrot_on_a_stick{ys:1,sk:1,CustomModelData:1,display:{Name:'"§b元素戰技"'}}
execute as @e[limit=1,sort=nearest,tag=h0] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @p ys.icon.skill
item replace entity @s hotbar.7 from entity @e[limit=1,sort=nearest,tag=h0] armor.head

# 元素爆發
item replace entity @e[limit=1,sort=nearest,tag=h0] armor.head with carrot_on_a_stick{ys:1,br:1,CustomModelData:1,display:{Name:'"§b元素爆發"'}}
execute as @e[limit=1,sort=nearest,tag=h0] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @p ys.icon.burst
item replace entity @s hotbar.8 from entity @e[limit=1,sort=nearest,tag=h0] armor.head

kill @e[limit=1,sort=nearest,tag=h0]