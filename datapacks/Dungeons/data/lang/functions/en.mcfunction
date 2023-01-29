#define storage dun:lang

execute unless data storage dun:lang {type:"en"} run tellraw @a [{"storage":"dun:lang","nbt":"msg.tips.prefix"},{"storage":"dun:lang","nbt":"msg.tips.change.lang"},"§6English"]
data modify storage dun:lang type set value "en"