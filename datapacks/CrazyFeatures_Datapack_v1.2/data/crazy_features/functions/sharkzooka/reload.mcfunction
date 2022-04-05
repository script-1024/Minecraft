item replace entity @s weapon.mainhand with crossbow{Charged:1b,CustomModelData:1001,display:{Name:'{"text":"Sharkzooka","italic":"false","color":"gold"}'},Shark:1b,HideFlags:127}
execute if entity @s[nbt={SelectedItem:{tag:{Shark:1b}}}] run scoreboard players set @s m_shark_load -1
playsound minecraft:sharkzooka_reload master @s ~ ~ ~ 1.0 1.0
