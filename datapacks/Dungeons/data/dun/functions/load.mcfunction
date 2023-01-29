forceload add -1 -1 0 0

# 修改語言
execute if data storage dun:lang {type:"zht"} run function lang:zht
execute if data storage dun:lang {type:"zhs"} run function lang:zhs
execute if data storage dun:lang {type:"en"} run function lang:en
execute unless data storage dun:lang type run function lang:zht

# 聲明變量
scoreboard objectives add gen trigger "§e重新生成"
scoreboard objectives add confirm trigger "§a確認"
scoreboard objectives add cancel trigger "§c取消"

scoreboard objectives add cd.ask dummy
scoreboard objectives add rand dummy "隨機數"
scoreboard objectives add rand.tmp dummy
scoreboard objectives add rand.seed dummy
scoreboard objectives add dun.room dummy "房間"

# 變量賦值
function dun:set_score

function dun:msg/tips/load_pack

function dun:timer