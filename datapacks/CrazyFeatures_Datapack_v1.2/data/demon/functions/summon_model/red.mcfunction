summon armor_stand ~ ~ ~ {Tags:['aj.demon','aj.demon.root_entity','new'],NoGravity:1b,Invisible:1b,Marker:0b,DisabledSlots:4144959,CustomName:'["",{"text":"model.","color":"gray"},{"text":"demon","color":"blue"},{"text":".root_entity","color":"gray"}]'}
execute rotated ~ 0 run function demon:summon_model/__generated__/execute/33
execute as @e[type=armor_stand,tag=aj.demon.root_entity,tag=new] run function demon:summon_model/__generated__/execute/34
tag @s remove new