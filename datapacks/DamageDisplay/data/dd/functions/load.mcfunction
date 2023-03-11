scoreboard objectives add entity.health.current dummy
scoreboard objectives add entity.health.prev dummy
scoreboard objectives add entity.health.diff dummy
scoreboard objectives add entity.damage dummy

scoreboard objectives add entity.tf.scale dummy
scoreboard objectives add entity.tf.scale.prev dummy
scoreboard objectives add entity.tf.x dummy
scoreboard objectives add entity.tf.y dummy
scoreboard objectives add entity.tf.z dummy

scoreboard objectives add player.isCrit dummy

scoreboard objectives add dd.element dummy
scoreboard objectives add dd.timer dummy
scoreboard objectives add dd.rng dummy
scoreboard objectives add const dummy
scoreboard objectives add tag dummy

scoreboard players set #-1 const -1
scoreboard players set #a const 2
scoreboard players set #b const 3
scoreboard players set #c const 5
scoreboard players set #d const 7
scoreboard players set #m const 128
scoreboard players set #n const 31
scoreboard players set #o const 64
scoreboard players set #seed dd.rng 0

#> tag
execute unless score #dd-GetEntityHealth tag matches 0..1 run scoreboard players set #dd-GetEntityHealth tag 1
execute unless score #dd-GetPlayerHealth tag matches 0..1 run scoreboard players set #dd-GetPlayerHealth tag 1

function dd:timer

#tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76傷害顯示\u00a7e讀取完畢"