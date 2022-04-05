#################################################################################################################
#                                                       INIT Player
#################################################################################################################


scoreboard players add @a m_launchTimer 0
scoreboard players add @a m_shark_load 0
scoreboard players add @a m_damageImmune 0

tellraw @s ["",{"text":"\n\n\n==-=-- Crazy Features - ","color":"red","bold":true},{"text":"by McMakistein","color":"gold","bold":true},{"text":" --=-==","color":"red","bold":true},{"text":"\n                 [","color":"none","bold":false},{"text":"Video about this creation","color":"dark_green","clickEvent":{"action":"open_url","value":"https://youtu.be/2LRvq6H11bs"}},{"text":"]\n\n","color":"none"},{"text":"                       More of my work:\n","bold":true,"color":"none"},{"text":"                [","bold":false,"color":"none"},{"text":"Youtube","color":"red","bold":true,"clickEvent":{"action":"open_url","value":"https://www.youtube.com/user/McMakistein?sub_confirmation=1."},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Subscribe for more datapacks like this!"}]}}},{"text":"] - [","color":"none","bold":false},{"text":"Twitter","color":"blue","bold":true,"clickEvent":{"action":"open_url","value":"https://twitter.com/MrMakistein"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Follow me on twitter for updates and sneakpeaks on new projects!"}]}}},{"text":"] - [","color":"none","bold":false},{"text":"Instagram","color":"gold","bold":true,"clickEvent":{"action":"open_url","value":"http://instagram.com/mrmakistein"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Follow me on Instagram if you want to know more about me as a person!"}]}}},{"text":"]\n","color":"none","bold":false}]
#tellraw @s {"translate":"Please activate the required resourcepack!","color":"dark_red"}

bossbar set minecraft:demon_hp players @a
tag @s add cf_init
