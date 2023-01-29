#execute if score @s cb.cd matches 1..4 unless score @s p.chatCd matches 1.. run tellraw @s ["\u00a7b提示> \u00a7e功能冷卻中，為防止遊戲卡頓，請在 ", {"score":{"name":"@s","objective":"cb.cd"}}, " \u00a7e秒後重試"]
#execute if score @s cb.cd matches 1.. unless score @s p.chatCd matches 1.. run scoreboard players set @s p.chatCd 20

execute unless score @s cb.cd matches 1.. run function cb:boat/transform