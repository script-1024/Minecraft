forceload add 0 0

scoreboard objectives add ct.self.x dummy "自己的x坐標"
scoreboard objectives add ct.self.y dummy "自己的y坐標"
scoreboard objectives add ct.self.z dummy "自己的z坐標"

scoreboard objectives add ct.target.x dummy "目標的x坐標"
scoreboard objectives add ct.target.y dummy "目標的y坐標"
scoreboard objectives add ct.target.z dummy "目標的z坐標"

scoreboard objectives add ct.temp dummy "緩存"
scoreboard objectives add ct.temp.x dummy "x坐標差"
scoreboard objectives add ct.temp.y dummy "y坐標差"
scoreboard objectives add ct.temp.z dummy "z坐標差"

scoreboard objectives add ct.item.slot dummy "欄位"
scoreboard objectives add ct.item.count dummy "物品數"

scoreboard objectives add ct.distance dummy "距離"
scoreboard objectives add ct.const dummy "常數"
scoreboard objectives add ct.amount dummy "人數"
scoreboard objectives add ct.time dummy "計時器"

execute as @a unless score @s ct.target.x matches -2147483648..2147483647 run scoreboard players set @s ct.target.x 0
execute as @a unless score @s ct.target.y matches -2147483648..2147483647 run scoreboard players set @s ct.target.y 0
execute as @a unless score @s ct.target.z matches -2147483648..2147483647 run scoreboard players set @s ct.target.z 0

scoreboard players set -1 ct.const -1
scoreboard players set 10 ct.const 10

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76簡易羅盤追蹤\u00a7e加載完畢"

function ct:reset_timer

function ct:timer

scoreboard objectives add ct.settings dummy "參數設置"
scoreboard objectives add ct.trigger trigger "開啟設置選單"
scoreboard players reset @a ct.trigger
scoreboard players enable @a ct.trigger
execute unless score track_delay ct.settings matches 0..600 run scoreboard players set track_delay ct.settings 5
execute unless score refresh ct.settings matches 0..600 run scoreboard players set refresh ct.settings 10
execute unless score show_distance ct.settings matches 0..1 run scoreboard players set show_distance ct.settings 1
execute unless score use_y ct.settings matches 0..1 run scoreboard players set track_y_position ct.settings 0
execute unless score distance_threshold_value ct.settings matches 1..2147483647 run scoreboard players set distance_threshold_value ct.settings 200

scoreboard objectives add ct.plan dummy "計劃中"
scoreboard objectives add ct.test dummy "測試"