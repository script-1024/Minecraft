#define storage dun:lang

data modify storage dun:lang pack.name set value "§6无限地城数据包"
data modify storage dun:lang msg.tips.prefix set value "§b提示> "
data modify storage dun:lang msg.tips.load set value "§e载入完毕"
data modify storage dun:lang msg.tips.change.lang set value "§e已将语言切换成 "
data modify storage dun:lang msg.tips.dun.gen set value "§e正在生成地图，耗时取决于设备性能"

data modify storage dun:lang msg.notice.prefix set value "§c注意> "
data modify storage dun:lang msg.notice.risky.settings set value "§e存在风险设置: "
data modify storage dun:lang msg.notice.error.occurred set value "§e运行阶段错误"
data modify storage dun:lang msg.notice.oversize set value "§e過大的地圖可能帶來§6性能問題"

data modify storage dun:lang msg.warn.prefix set value "§4警告> "
data modify storage dun:lang msg.warn.incorrect.settings set value "§e系统存在错误设置，已自动重置"

execute unless data storage dun:lang {type:"zhs"} run tellraw @a [{"storage":"dun:lang","nbt":"msg.tips.prefix"},{"storage":"dun:lang","nbt":"msg.tips.change.lang"},"§6简体中文"]
data modify storage dun:lang type set value "zhs"