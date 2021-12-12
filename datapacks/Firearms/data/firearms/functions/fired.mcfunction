# 完成射擊

    execute as @a if score @s bullet matches 1.. run scoreboard players reset @s fired
    execute as @a unless score @s fired matches 1.. run scoreboard players reset @s break
    execute as @a if score @s bullet matches 1.. run scoreboard players reset @s bullet
    
# ...