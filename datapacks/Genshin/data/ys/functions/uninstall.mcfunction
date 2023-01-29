tag @a remove ys
clear @a carrot_on_a_stick{ys:1}
kill @e[tag=char]
kill @e[tag=m]

scoreboard objectives remove char
scoreboard objectives remove ys.char

scoreboard objectives remove ys.idBook

scoreboard objectives remove ys.dx
scoreboard objectives remove ys.dy
scoreboard objectives remove ys.dz
scoreboard objectives remove ys.direction
scoreboard objectives remove ys.rotation

scoreboard objectives remove ys.kb.w
scoreboard objectives remove ys.kb.a
scoreboard objectives remove ys.kb.s
scoreboard objectives remove ys.kb.d
scoreboard objectives remove ys.kb.wasd

scoreboard objectives remove ys.set
scoreboard objectives remove ys.slot
scoreboard objectives remove ys.hotbar
scoreboard objectives remove ys.used
scoreboard objectives remove ys.jump

scoreboard objectives remove ys.health
scoreboard objectives remove ys.cd.attack
scoreboard objectives remove ys.cd.skill
scoreboard objectives remove ys.cd.burst
scoreboard objectives remove ys.cd.jump
scoreboard objectives remove ys.cd.sprint
scoreboard objectives remove ys.state.walking

scoreboard objectives remove ys.icon.skill
scoreboard objectives remove ys.icon.burst

scoreboard objectives remove ys.uid

scoreboard objectives remove ys.p
scoreboard objectives remove ys.p1
scoreboard objectives remove ys.p2
scoreboard objectives remove ys.p3
scoreboard objectives remove ys.p4

scoreboard objectives remove ys.ani
scoreboard objectives remove ys.ani.type

tellraw @a ["\n",{"nbt":"msg.tip.prefix","storage":"ys:lang"},{"nbt":"msg.tip.pack.name","storage":"ys:lang"},{"nbt":"msg.tip.pack.uninstall","storage":"ys:lang"}]