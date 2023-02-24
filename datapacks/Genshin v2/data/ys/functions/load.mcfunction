scoreboard objectives add entity.health.current dummy
scoreboard objectives add entity.health.prev dummy
scoreboard objectives add entity.health.diff dummy

#> transformation
scoreboard objectives add entity.tf.scale dummy
scoreboard objectives add entity.tf.x dummy
scoreboard objectives add entity.tf.y dummy
scoreboard objectives add entity.tf.z dummy

scoreboard objectives add entity.pos.x dummy
scoreboard objectives add entity.pos.y dummy
scoreboard objectives add entity.pos.z dummy

scoreboard objectives add entity.dx dummy
scoreboard objectives add entity.dy dummy
scoreboard objectives add entity.dz dummy

scoreboard objectives add player.uid dummy
scoreboard objectives add player.select dummy
scoreboard objectives add player.sneak dummy
scoreboard objectives add player.atk dummy
scoreboard objectives add player.def dummy

scoreboard objectives add player.input.atk dummy
scoreboard objectives add player.input.use dummy
scoreboard objectives add player.input.w dummy
scoreboard objectives add player.input.a dummy
scoreboard objectives add player.input.s dummy
scoreboard objectives add player.input.d dummy

scoreboard objectives add element.pyro dummy
scoreboard objectives add element.hydro dummy
scoreboard objectives add element.anemo dummy
scoreboard objectives add element.electro dummy
scoreboard objectives add element.dendro dummy
scoreboard objectives add element.cryo dummy
scoreboard objectives add element.geo dummy

scoreboard objectives add ys.tag dummy
scoreboard objectives add const dummy

function ys:define/score
function ys:entity/player/check