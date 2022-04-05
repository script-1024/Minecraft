execute if entity @s[scores={m_drill_state=0,attackTimer1=0,attackTimer2=0,attack1_cd=0,attack2_cd=0}] run function rover:animations/animation.rover.drive_backwards/reset
execute if entity @s[scores={m_drill_state=0,attackTimer1=0,attackTimer2=0,attack1_cd=0,attack2_cd=0}] run function rover:animations/animation.rover.drive_forward/reset
execute if entity @s[scores={m_drill_state=0,attackTimer1=0,attackTimer2=0,attack1_cd=0,attack2_cd=0}] run function rover:animations/animation.rover.idle/start

execute if entity @s[scores={m_drill_state=1,attackTimer1=0,attackTimer2=0,attack1_cd=0,attack2_cd=0}] run function rover:animations/animation.rover.drive_backwards_drill/reset
execute if entity @s[scores={m_drill_state=1,attackTimer1=0,attackTimer2=0,attack1_cd=0,attack2_cd=0}] run function rover:animations/animation.rover.drive_forward_drill/reset
execute if entity @s[scores={m_drill_state=1,attackTimer1=0,attackTimer2=0,attack1_cd=0,attack2_cd=0}] run function rover:animations/animation.rover.idle_drill/start
