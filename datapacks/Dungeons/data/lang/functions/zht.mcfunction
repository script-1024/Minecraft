#define storage dun:lang

data modify storage dun:lang pack.name set value "§6無限地城資料包"

data modify storage dun:lang btn.confirm set value '{"text":" §a[確定] ","clickEvent":{"action":"run_command","value":"/trigger confirm"}}'
data modify storage dun:lang btn.cancel set value '{"text":" §c[取消] ","clickEvent":{"action":"run_command","value":"/trigger cancel"}}'

data modify storage dun:lang msg.tips.prefix set value "§b提示> "
data modify storage dun:lang msg.tips.load set value "§e讀取完成"
data modify storage dun:lang msg.tips.change.lang set value "§e已將語言切換成 "
data modify storage dun:lang msg.tips.dun.gen set value "§e正在生成地圖，耗時取決於電腦性能"
data modify storage dun:lang msg.tips.next set value "§e還要繼續嗎?"
data modify storage dun:lang msg.tips.cancel set value "§e已取消該次操作"

data modify storage dun:lang msg.notice.prefix set value "§c注意> "
data modify storage dun:lang msg.notice.risky.settings set value "§e存在風險設定項: "
data modify storage dun:lang msg.notice.error.occurred set value "§e運行時發生錯誤"
data modify storage dun:lang msg.notice.rooms set value "§e 個房間"
data modify storage dun:lang msg.notice.oversize set value "§e過大的地圖可能帶來§6性能問題"

data modify storage dun:lang msg.warn.prefix set value "§4警告> "
data modify storage dun:lang msg.warn.incorrect.settings set value "§e系統存在錯誤的設定項，已自動重置"

execute unless data storage dun:lang {type:"zht"} run tellraw @a [{"storage":"dun:lang","nbt":"msg.tips.prefix"},{"storage":"dun:lang","nbt":"msg.tips.change.lang"},"§6繁體中文"]
data modify storage dun:lang type set value "zht"