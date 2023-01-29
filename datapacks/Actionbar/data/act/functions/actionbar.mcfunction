schedule function act:actionbar 3t

# 坐標模式
execute as @a if score @s actionbar matches 1 run title @s actionbar {"translate":"%s | %s | %s","with":[{"score":{"name":"@s","objective":"self.x"},"color":"red"},{"score":{"name":"@s","objective":"self.y"},"color":"green"},{"score":{"name":"@s","objective":"self.z"},"color":"aqua"}]}

# 羅盤模式
execute as @a if score @s actionbar matches 2 if score @s self.direction matches 001..022 run title @s actionbar {"translate":"北方 %s°","color":"yellow","with":[{"score":{"name":"@s","objective":"self.direction"},"color":"aqua"}]}
execute as @a if score @s actionbar matches 2 if score @s self.direction matches 023..067 run title @s actionbar {"translate":"東北 %s°","color":"yellow","with":[{"score":{"name":"@s","objective":"self.direction"},"color":"aqua"}]}
execute as @a if score @s actionbar matches 2 if score @s self.direction matches 068..112 run title @s actionbar {"translate":"東方 %s°","color":"yellow","with":[{"score":{"name":"@s","objective":"self.direction"},"color":"aqua"}]}
execute as @a if score @s actionbar matches 2 if score @s self.direction matches 113..157 run title @s actionbar {"translate":"東南 %s°","color":"yellow","with":[{"score":{"name":"@s","objective":"self.direction"},"color":"aqua"}]}
execute as @a if score @s actionbar matches 2 if score @s self.direction matches 158..202 run title @s actionbar {"translate":"南方 %s°","color":"yellow","with":[{"score":{"name":"@s","objective":"self.direction"},"color":"aqua"}]}
execute as @a if score @s actionbar matches 2 if score @s self.direction matches 203..247 run title @s actionbar {"translate":"西南 %s°","color":"yellow","with":[{"score":{"name":"@s","objective":"self.direction"},"color":"aqua"}]}
execute as @a if score @s actionbar matches 2 if score @s self.direction matches 248..292 run title @s actionbar {"translate":"西方 %s°","color":"yellow","with":[{"score":{"name":"@s","objective":"self.direction"},"color":"aqua"}]}
execute as @a if score @s actionbar matches 2 if score @s self.direction matches 293..337 run title @s actionbar {"translate":"西北 %s°","color":"yellow","with":[{"score":{"name":"@s","objective":"self.direction"},"color":"aqua"}]}
execute as @a if score @s actionbar matches 2 if score @s self.direction matches 338..359 run title @s actionbar {"translate":"北方 %s°","color":"yellow","with":[{"score":{"name":"@s","objective":"self.direction"},"color":"aqua"}]}