execute as @a if score @s p.actionbar matches 0 run title @s actionbar [{"score":{"name":"@s","objective":"p.x"},"color":"red"},"\u00a7f | ",{"score":{"name":"@s","objective":"p.y"},"color":"green"},"\u00a7f | ",{"score":{"name":"@s","objective":"p.z"},"color":"aqua"}]

schedule function std:actionbar 5t