# 不允許射擊時
    
    execute as @e[tag=shooting, nbt={HandItems:[{tag:{GunType:"rifle"}}]}] at @s run item replace entity @p[tag=own_rifle] weapon.mainhand from entity @s weapon.mainhand
    execute as @e[tag=shooting] run data merge entity @s {HandItems:[]}

# ...