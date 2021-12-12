#=================================================
#
# Firearms_v1.1
# 
# 作者: script1024
#
# 這些指令會不斷執行
#
#=================================================



# 同步

    function firearms:sync

# ...



# 如果玩家自己做了一把槍就替換成真的槍（方便生存玩家製作）

    execute as @a if data entity @s Inventory[{id:"minecraft:wooden_hoe", tag:{display:{Name:'{"text":"手槍"}'}}}] run function firearms:give/pistol
    execute as @a if data entity @s Inventory[{id:"minecraft:stone_hoe", tag:{display:{Name:'{"text":"步槍"}'}}}] run function firearms:give/rifle
    execute as @a if data entity @s Inventory[{id:"minecraft:iron_hoe", tag:{display:{Name:'{"text":"霰彈槍"}'}}}] run function firearms:give/shotgun
    execute as @a if data entity @s Inventory[{id:"minecraft:stone_shovel", tag:{display:{Name:'{"text":"火箭發射器"}'}}}] run function firearms:give/rocket
    execute as @a if data entity @s Inventory[{id:"minecraft:wooden_shovel", tag:{display:{Name:'{"text":"狙擊槍"}'}}}] run function firearms:give/sniper

# ...



# 如果玩家拿著槍就進入射擊狀態，否則取消射擊

    execute as @a if data entity @s SelectedItem{tag:{IsGun:1b}} run tag @s add shooter
    execute as @a unless data entity @s SelectedItem{tag:{IsGun:1b}} run tag @s remove shooter

# ...


# 拿什麼槍

    # 手槍

        execute as @a if data entity @s Inventory[{tag:{GunType:"pistol"}}] run tag @s add own_pistol
        execute as @a[tag=own_pistol] unless score @s fired matches 1.. unless score @s ammo matches 1.. unless data entity @s Inventory[{tag:{GunType:"pistol"}}] run tag @s remove own_pistol

        execute as @a if data entity @s SelectedItem{tag:{GunType:"pistol"}} run tag @s add holding_pistol
        execute as @a unless data entity @s {SelectedItem:{tag:{GunType:"pistol"}}} run tag @s remove holding_pistol

    # 步槍

        execute as @a if data entity @s Inventory[{tag:{GunType:"rifle"}}] run tag @s add own_rifle
        execute as @a[tag=own_pistol] unless score @s fired matches 1.. unless score @s ammo matches 1.. unless data entity @s Inventory[{tag:{GunType:"rifle"}}] run tag @s remove own_rifle

        execute as @a if data entity @s SelectedItem{tag:{GunType:"rifle"}} run tag @s add holding_rifle
        execute as @a unless data entity @s {SelectedItem:{tag:{GunType:"rifle"}}} run tag @s remove holding_rifle
    
    # 霰彈槍

        execute as @a if data entity @s Inventory[{tag:{GunType:"shotgun"}}] run tag @s add own_shotgun
        execute as @a unless data entity @s Inventory[{tag:{GunType:"shotgun"}}] unless entity @e[limit=1, sort=nearest, distance=..1, tag=shooting] run tag @s remove own_shotgun

        execute as @a if data entity @s SelectedItem{tag:{GunType:"shotgun"}} run tag @s add holding_shotgun
        execute as @a unless data entity @s {SelectedItem:{tag:{GunType:"shotgun"}}} run tag @s remove holding_shotgun

    # 火箭發射器

        execute as @a if data entity @s Inventory[{tag:{GunType:"rocket"}}] run tag @s add own_rocket
        execute as @a unless data entity @s Inventory[{tag:{GunType:"rocket"}}] unless entity @e[limit=1, sort=nearest, distance=..1, tag=shooting] run tag @s remove own_rocket

        execute as @a if data entity @s SelectedItem{tag:{GunType:"rocket"}} run tag @s add holding_rocket
        execute as @a unless data entity @s {SelectedItem:{tag:{GunType:"rocket"}}} run tag @s remove holding_rocket

    # 狙擊槍

        execute as @a if data entity @s Inventory[{tag:{GunType:"sniper"}}] run tag @s add own_sniper
        execute as @a unless data entity @s Inventory[{tag:{GunType:"sniper"}}] unless entity @e[limit=1, sort=nearest, distance=..1, tag=shooting] run tag @s remove own_sniper

        execute as @a if data entity @s SelectedItem{tag:{GunType:"sniper"}} run tag @s add holding_sniper
        execute as @a unless data entity @s SelectedItem{tag:{GunType:"sniper"}} run tag @s remove holding_sniper
    
    # ...

# ...


# 射擊狀態

    execute as @a[tag=shooter] at @s positioned ^ ^ ^0.1 unless entity @e[tag=shooting, distance=..0.1] if score @p[tag=shooter] fired matches 1.. run summon armor_stand ~ ~ ~ {Invisible:1b, Marker:1b, NoGravity:1b, ShowArms:1b, CustomName:' "\\u00a7f標記" ', CustomNameVisible:0b, Tags:[shooting]}
    execute as @a[tag=shooter] at @s positioned ^ ^ ^0.1 unless entity @e[tag=shooting, distance=..0.1] unless score @p[tag=shooter] fired matches 1.. run summon armor_stand ~ ~ ~ {Invisible:1b, Marker:0b, NoGravity:1b, ShowArms:1b, CustomName:' "\\u00a7f標記" ', CustomNameVisible:0b, Tags:[shooting]}
    execute as @e[tag=shooting] if score @p[tag=shooter] fired matches 1.. run data merge entity @s {Marker:1b}
    execute as @e[tag=shooting] unless score @p[tag=shooter] fired matches 1.. run data merge entity @s {Marker:0b}
    execute as @e[tag=shooting] at @s unless entity @p[tag=shooter, distance=..0.2] unless entity @p[scores={fired=1..}, distance=..0.2] unless data entity @s HandItems[{tag:{IsGun:1b}}] run kill @s

    # 手槍
        
        execute as @e[tag=shooting] if score @p[tag=own_pistol] fired matches 1.. if data entity @s HandItems[{tag:{GunType:"pistol"}}] run function firearms:ignore/pistol
        execute as @e[tag=shooting] unless score @p[tag=own_pistol] pistol_ammo matches 1.. if data entity @s HandItems[{tag:{GunType:"pistol"}}] run function firearms:ignore/pistol
        execute as @e[tag=shooting] if score @p[tag=own_pistol] pistol_ammo matches 1.. unless score @p[tag=own_pistol] fired matches 1.. if data entity @s HandItems[{tag:{GunType:"pistol"}}] run function firearms:fire/pistol
    
    # 步槍
       
        execute as @e[tag=shooting] if score @p[tag=own_rifle] fired matches 1.. if data entity @s HandItems[{tag:{GunType:"rifle"}}] run function firearms:ignore/rifle
        execute as @e[tag=shooting] unless score @p[tag=own_rifle] rifle_ammo matches 1.. if data entity @s HandItems[{tag:{GunType:"rifle"}}] run function firearms:ignore/rifle
        execute as @e[tag=shooting] if score @p[tag=own_rifle] rifle_ammo matches 1.. unless score @p[tag=own_rifle] fired matches 1.. if data entity @s HandItems[{tag:{GunType:"rifle"}}] run function firearms:fire/rifle
    
    # ...

# ...



# 檢查實體

    execute as @a[tag=holding_pistol] at @s anchored eyes positioned ^ ^ ^1 run function firearms:entity_detect/pistol
    execute as @a[tag=holding_rifle] at @s anchored eyes positioned ^ ^ ^1 run function firearms:entity_detect/rifle
    execute as @a[tag=shooter] at @s store result score @s target_health run data get entity @e[tag=target, limit=1, sort=nearest] Health 10
    execute as @e[tag=target] run effect give @s glowing 1 0 true
    execute as @e[tag=!target] run effect clear @s glowing

# ...