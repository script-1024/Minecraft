# 凍結 冰+水
execute if entity @s[tag=!el.frz] if score @s element.cryo matches 1.. if score @s element.hydro matches 1.. run function ys:entity/element/parse/freeze