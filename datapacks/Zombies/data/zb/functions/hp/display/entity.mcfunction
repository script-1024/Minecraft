# 顯示當前血量
# call | tick

execute unless data entity @s ArmorItems[3].id run item replace entity @s armor.head with oak_button

item modify entity @s armor.head zb:get_health
data modify entity @s CustomNameVisible set value 1b
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name