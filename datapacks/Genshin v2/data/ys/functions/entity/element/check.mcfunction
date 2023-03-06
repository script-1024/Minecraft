## 无 0 | 火 1 | 水 3 | 风 7 | 雷 15 | 草 31 | 冰 63 | 岩 127
#  弱 0.8单位 留9.5s | 强 1.6单位 留12s
execute if score @s element.pyro matches 1.. run particle small_flame ~ ~1 ~ 0.3 0.5 0.3 0 1 force
execute if score @s element.hydro matches 1.. run particle falling_water ~ ~1 ~ 0.3 0.5 0.3 0 3 force
execute if score @s element.cryo matches 1.. run particle snowflake ~ ~1 ~ 0.3 0.5 0.3 0 1 force

#> 蒸发 04
#  火+水 1.5 | 水+火 2.0

#> 融化 64
#  冰+火 1.5 | 火+冰 2.0

#> 冻结 66
#  冰+水
execute if entity @s[tag=!el.frz] if score @s element.cryo matches 1.. if score @s element.hydro matches 1.. run function ys:entity/element/parse/freeze
execute if entity @s[tag=el.frz] run function ys:entity/element/freeze

#> 超载 16
#  雷+火

#> 超导 78
#  雷+冰

#> 感电 18
#  雷+水

#> 燃烧 32
#  草+火

#> 绽放 34  |  烈绽放 35  |  超绽放 49
#  草+水    |  草+水+火   |  草+水+雷

#> 激化 46  |  蔓激化 77  |  超激化 61
#  草+雷    |  草+雷+草   |  草+雷+雷