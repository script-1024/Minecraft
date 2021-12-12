tag @s add ct.wrong
tellraw @s "\u00a7c警告> \u00a74請不要同時攜帶多個追蹤器，這會破壞遊戲檢測正常運作!"
clear @s minecraft:compass{tracker:1b}
give @s minecraft:compass{display:{Name:' "\\u00a7b追蹤器" '}, tracker:1b} 1
tag @s remove ct.wrong