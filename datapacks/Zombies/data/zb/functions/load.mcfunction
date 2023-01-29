# 載入和重置分數
# load

## class entity {
    scoreboard objectives add entity.health dummy
    scoreboard objectives add entity.health.max dummy
    scoreboard objectives add entity.health.percent dummy
## }

## class player {
    # atk -> attack
    scoreboard objectives add player.coin dummy
    scoreboard objectives add player.atk dummy
    scoreboard objectives add player.use minecraft.used:minecraft.carrot_on_a_stick
    scoreboard objectives add player.use.times dummy
    scoreboard objectives add player.reload minecraft.custom:drop
    scoreboard objectives add player.sneak minecraft.custom:sneak_time
    scoreboard objectives add player.rescue dummy
    scoreboard objectives add player.select dummy
    scoreboard objectives add player.aim dummy
    scoreboard objectives add player.use.cd dummy
    scoreboard objectives add player.actionbar dummy

    # wp -> weapon
    scoreboard objectives add player.wp.id dummy
    scoreboard objectives add player.wp.am.mag dummy
    scoreboard objectives add player.wp.am.tmp dummy
    scoreboard objectives add player.wp.am.total dummy
    scoreboard objectives add player.wp.fired dummy

    scoreboard objectives add player.wp_1.id dummy
    scoreboard objectives add player.wp_2.id dummy

    scoreboard objectives add player.wp_1.cd dummy
    scoreboard objectives add player.wp_2.cd dummy

    scoreboard objectives add player.wp_1.am.mag dummy
    scoreboard objectives add player.wp_2.am.mag dummy

    scoreboard objectives add player.wp_1.am.total dummy
    scoreboard objectives add player.wp_2.am.total dummy

    scoreboard objectives add player.wp_1.ani dummy
    scoreboard objectives add player.wp_2.ani dummy

    # am -> ammo
    scoreboard objectives add player.am dummy
    scoreboard objectives add player.am.tmp dummy
    scoreboard objectives add player.am.query dummy

    scoreboard objectives add player.buff_1 dummy
    scoreboard objectives add player.buff_2 dummy
    scoreboard objectives add player.buff_3 dummy
## }

## class enemy {
    scoreboard objectives add enemy.amount dummy
## }

scoreboard objectives add sidebar dummy "===狀態欄==="
scoreboard objectives add const dummy "常數"

function zb:timer
function zb:define/const
function zb:define/nbt
function zb:player/title

tellraw @a "§b除錯> §e數據包載入完成"