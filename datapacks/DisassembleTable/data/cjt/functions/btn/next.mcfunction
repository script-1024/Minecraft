item replace block ~ ~ ~ container.23 with paper{display:{Name:'"\\u00a7b切換素材"'},CustomModelData:202,btn:1,cl:1}

# 原木
execute if data block ~ ~ ~ Items[{id:"minecraft:warped_stem"}] run tag @s add logs
data modify block ~ ~ ~ Items[{id:"minecraft:spruce_log"}].id set value "warped_stem"
data modify block ~ ~ ~ Items[{id:"minecraft:oak_log"}].id set value "spruce_log"
data modify block ~ ~ ~ Items[{id:"minecraft:mangrove_log"}].id set value "oak_log"
data modify block ~ ~ ~ Items[{id:"minecraft:jungle_log"}].id set value "mangrove_log"
data modify block ~ ~ ~ Items[{id:"minecraft:dark_oak_log"}].id set value "jungle_log"
data modify block ~ ~ ~ Items[{id:"minecraft:crimson_stem"}].id set value "dark_oak_log"
data modify block ~ ~ ~ Items[{id:"minecraft:birch_log"}].id set value "crimson_stem"
data modify block ~ ~ ~ Items[{id:"minecraft:acacia_log"}].id set value "birch_log"
execute if entity @s[tag=logs] run data modify block ~ ~ ~ Items[{id:"minecraft:warped_stem"}].id set value "acacia_log"

# 木材
execute if data block ~ ~ ~ Items[{id:"minecraft:warped_planks"}] run tag @s add planks
data modify block ~ ~ ~ Items[{id:"minecraft:spruce_planks"}].id set value "warped_planks"
data modify block ~ ~ ~ Items[{id:"minecraft:oak_planks"}].id set value "spruce_planks"
data modify block ~ ~ ~ Items[{id:"minecraft:mangrove_planks"}].id set value "oak_planks"
data modify block ~ ~ ~ Items[{id:"minecraft:jungle_planks"}].id set value "mangrove_planks"
data modify block ~ ~ ~ Items[{id:"minecraft:dark_oak_planks"}].id set value "jungle_planks"
data modify block ~ ~ ~ Items[{id:"minecraft:crimson_planks"}].id set value "dark_oak_planks"
data modify block ~ ~ ~ Items[{id:"minecraft:birch_planks"}].id set value "crimson_planks"
data modify block ~ ~ ~ Items[{id:"minecraft:acacia_planks"}].id set value "birch_planks"
execute if entity @s[tag=planks] run data modify block ~ ~ ~ Items[{id:"minecraft:warped_planks"}].id set value "acacia_planks"

# 鵝卵石類
execute if data block ~ ~ ~ Items[{id:"minecraft:cobbled_deepslate"}] run tag @s add stone
data modify block ~ ~ ~ Items[{id:"minecraft:cobblestone"}].id set value "cobbled_deepslate"
data modify block ~ ~ ~ Items[{id:"minecraft:blackstone"}].id set value "cobblestone"
execute if entity @s[tag=stone] run data modify block ~ ~ ~ Items[{id:"minecraft:cobbled_deepslate"}].id set value "blackstone"

tag @s remove planks
tag @s remove stone