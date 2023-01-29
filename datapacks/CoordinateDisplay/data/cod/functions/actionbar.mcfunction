execute as @a if score @s p.actionbar matches 0 run title @s actionbar [{"score":{"name":"@s","objective":"p.x"},"color":"red"},"\u00a7f | ",{"score":{"name":"@s","objective":"p.y"},"color":"green"},"\u00a7f | ",{"score":{"name":"@s","objective":"p.z"},"color":"aqua"}]

execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 0 run title @s actionbar ["\u00a76\u00a7l正北方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 1..22 run title @s actionbar ["\u00a7e\u00a7l北方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 23..67 run title @s actionbar ["\u00a7e\u00a7l東北方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 68..112 unless score @s p.direction matches 90 run title @s actionbar ["\u00a7e\u00a7l東方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 90 run title @s actionbar ["\u00a76\u00a7l正東方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 113..157 run title @s actionbar ["\u00a7e\u00a7l東南方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 158..202 unless score @s p.direction matches 180 run title @s actionbar ["\u00a7e\u00a7l南方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 180 run title @s actionbar ["\u00a76\u00a7l正南方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 203..247 run title @s actionbar ["\u00a7e\u00a7l西南方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 248..292 unless score @s p.direction matches 270 run title @s actionbar ["\u00a7e\u00a7l西方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 270 run title @s actionbar ["\u00a76\u00a7l正西方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 293..337 run title @s actionbar ["\u00a7e\u00a7l西北方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]
execute as @a if score @s p.actionbar matches 1 if score @s p.direction matches 338..359 run title @s actionbar ["\u00a7e\u00a7l北方 ",{"score":{"name":"@s","objective":"p.direction"},"color":"aqua"},"°"]

schedule function cod:actionbar 3t