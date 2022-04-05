execute if entity @s[scores={m_drill_state=0}] run function rover:animations/animation.rover.idle/reset
execute if entity @s[scores={m_drill_state=0}] run function rover:animations/animation.rover.drive_forward/reset
execute if entity @s[scores={m_drill_state=0}] run function rover:animations/animation.rover.drive_backwards/start

execute if entity @s[scores={m_drill_state=1}] run function rover:animations/animation.rover.idle_drill/reset
execute if entity @s[scores={m_drill_state=1}] run function rover:animations/animation.rover.drive_forward_drill/reset
execute if entity @s[scores={m_drill_state=1}] run function rover:animations/animation.rover.drive_backwards_drill/start
