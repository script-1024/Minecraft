scoreboard objectives add entity.health.current dummy
scoreboard objectives add entity.health.prev dummy
scoreboard objectives add entity.health.diff dummy

#> transformation
scoreboard objectives add entity.tf.scale dummy
scoreboard objectives add entity.tf.x dummy
scoreboard objectives add entity.tf.y dummy
scoreboard objectives add entity.tf.z dummy

scoreboard objectives add player.p dummy
scoreboard objectives add player.uid dummy
scoreboard objectives add player.select dummy
scoreboard objectives add player.sneak dummy
scoreboard objectives add player.atk dummy
scoreboard objectives add player.def dummy

#scoreboard objectives add player.input.atk dummy
#scoreboard objectives add player.input.use dummy

scoreboard objectives add element.pyro dummy
scoreboard objectives add element.hydro dummy
scoreboard objectives add element.anemo dummy
scoreboard objectives add element.electro dummy
scoreboard objectives add element.dendro dummy
scoreboard objectives add element.cryo dummy
scoreboard objectives add element.geo dummy
scoreboard objectives add element.state dummy

#> 状态计时器
scoreboard objectives add timer.frozen dummy
scoreboard objectives add timer.melt dummy

#> 计时计数器
scoreboard objectives add timer.attach dummy
scoreboard objectives add counter.attach dummy

scoreboard objectives add ys.tag dummy
scoreboard objectives add const dummy

function ys:define/score
function ys:timer