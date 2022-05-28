# 給予追蹤器

    clear @p compass{display:{Name:'{"text":"ct"}'}} 1
    give @p compass{display:{Name:' "\\u00a7b追蹤器" '}, ct:1b} 1
    execute store result score @p ct.amount if entity @a[scores={ct.amount=0..}]
    execute unless entity @a[scores={ct.amount=0..}] run scoreboard players set @s ct.amount 0

# ...