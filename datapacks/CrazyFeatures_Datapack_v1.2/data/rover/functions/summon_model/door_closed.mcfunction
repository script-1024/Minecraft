summon armor_stand ~ ~ ~ {Tags:['aj.rover','aj.rover.root_entity','new'],NoGravity:1b,Invisible:1b,Marker:0b,DisabledSlots:4144959,CustomName:'["",{"text":"model.","color":"gray"},{"text":"rover","color":"blue"},{"text":".root_entity","color":"gray"}]'}
execute rotated ~ 0 run function rover:summon_model/__generated__/execute/0
execute as @e[type=armor_stand,tag=aj.rover.root_entity,tag=new] run function rover:summon_model/__generated__/execute/1
tag @s remove new