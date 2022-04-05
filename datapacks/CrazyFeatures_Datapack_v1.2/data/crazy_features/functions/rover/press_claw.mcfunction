scoreboard players set @s[scores={m_claw_state=0,attackTimer1=0,attackTimer2=0,attack1_cd=0,m_drill_state=0},tag=!isAnimating] attackTimer1 1
scoreboard players set @s[scores={m_claw_state=1,attackTimer1=0,attackTimer2=0,attack1_cd=0,m_drill_state=0},tag=!isAnimating] attackTimer1 301
execute if entity @s[scores={m_claw_state=0,attackTimer1=0,attackTimer2=0,attack1_cd=0,m_drill_state=1},tag=!isAnimating] run title @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] actionbar {"text":"Deactivate the drill first!","color":"dark_red","bold":"true"}
execute if entity @s[scores={m_claw_state=0,attackTimer1=0,attackTimer2=0,attack1_cd=0,m_drill_state=1},tag=!isAnimating] run title @a[nbt={RootVehicle:{Entity:{Tags:["aj.rover.seat"]}}},distance=..0.85] times 3 20 10
