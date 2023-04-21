scoreboard objectives add entity.health.current dummy
scoreboard objectives add entity.health.prev dummy
scoreboard objectives add entity.health.diff dummy
scoreboard objectives add entity.health.max dummy

scoreboard objectives add entity.res dummy
scoreboard objectives add entity.res.phys dummy
scoreboard objectives add entity.res.pyro dummy
scoreboard objectives add entity.res.hydro dummy
scoreboard objectives add entity.res.anemo dummy
scoreboard objectives add entity.res.electro dummy
scoreboard objectives add entity.res.dendro dummy
scoreboard objectives add entity.res.cryo dummy
scoreboard objectives add entity.res.geo dummy

scoreboard objectives add entity.damage dummy
scoreboard objectives add entity.atk dummy
scoreboard objectives add entity.def dummy
scoreboard objectives add entity.lv dummy
scoreboard objectives add entity.rx dummy

scoreboard objectives add player.p dummy
scoreboard objectives add player.uid dummy
scoreboard objectives add player.select dummy
scoreboard objectives add player.select.prev dummy
scoreboard objectives add player.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add player.damage minecraft.custom:minecraft.damage_resisted
scoreboard objectives add player.atk dummy
scoreboard objectives add player.def dummy
scoreboard objectives add player.lv dummy
scoreboard objectives add player.em dummy
scoreboard objectives add player.masteryBonus dummy
scoreboard objectives add player.elmentalBonus dummy
scoreboard objectives add player.isCrit dummy
scoreboard objectives add player.crit.dmg dummy
scoreboard objectives add player.crit.rate dummy
scoreboard objectives add player.multiplier dummy
scoreboard objectives add player.mp.atk dummy
scoreboard objectives add player.mp.skill dummy
scoreboard objectives add player.mp.burst dummy

scoreboard objectives add player.cd.atk dummy

scoreboard objectives add player.input.scroll dummy
#scoreboard objectives add player.input.use dummy

scoreboard objectives add element.pyro dummy
scoreboard objectives add element.hydro dummy
scoreboard objectives add element.anemo dummy
scoreboard objectives add element.electro dummy
scoreboard objectives add element.dendro dummy
scoreboard objectives add element.cryo dummy
scoreboard objectives add element.geo dummy
scoreboard objectives add element.state dummy
scoreboard objectives add element.decay dummy
scoreboard objectives add element.frozen dummy

#> 状态计时器
scoreboard objectives add timer.icon dummy
scoreboard objectives add timer.frozen dummy
scoreboard objectives add timer.burning dummy
scoreboard objectives add timer.superconduct dummy

#> 计时计数器
scoreboard objectives add timer.aura dummy
scoreboard objectives add counter.aura dummy

scoreboard objectives add ys.tmp dummy
scoreboard objectives add const dummy
scoreboard objectives add tag dummy

function ys:entity/element/reset
function ys:define/score
function ys:timer

tellraw @a "§b[#] §e系統載入完成"

#> 系统通知样式规范
## [+] §a 新增 / 正面
## [-] §c 移除 / 负面
## [#] §b 信息 / 普通
## [?] §f 未知
