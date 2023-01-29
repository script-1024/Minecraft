execute if score set dun.room matches ..64 run function dun:gen/start
execute if score set dun.room matches 65.. unless entity @s[tag=ask] run function dun:msg/notice/oversize
execute if score @s confirm matches 1.. run function dun:gen/oversize/confirm
execute if score @s cancel matches 1.. run function dun:gen/oversize/cancel