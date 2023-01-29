# 觸發器
scoreboard objectives add here trigger "我在這裡！"
scoreboard objectives add actionbar trigger "動作欄顯示"

# 玩家
scoreboard objectives add self.x dummy "X"
scoreboard objectives add self.y dummy "Y"
scoreboard objectives add self.z dummy "Z"
scoreboard objectives add self.direction dummy "朝向"
scoreboard objectives add self.lookup dummy "抬頭"
scoreboard objectives add self.dimension dummy "維度"
scoreboard objectives add self.health health "生命值"

scoreboard objectives add last.x dummy "上一個X"
scoreboard objectives add last.y dummy "上一個Y"
scoreboard objectives add last.z dummy "上一個Z"
scoreboard objectives add last.dimension dummy "上一個維度"

scoreboard objectives add player.death deathCount "死亡數"

scoreboard objectives setdisplay list self.health

function act:actionbar