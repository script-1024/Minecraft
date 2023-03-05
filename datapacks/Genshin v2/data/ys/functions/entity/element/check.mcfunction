## 火 水 风 雷 草 冰 岩
#  弱 0.8单位 留9.5s | 强 1.6单位 留12s
execute if score @s element.pyro matches 1.. run particle small_flame ~ ~1 ~ 0.3 0.5 0.3 0 1 force
execute if score @s element.hydro matches 1.. run particle falling_water ~ ~1 ~ 0.3 0.5 0.3 0 1 force
execute if score @s element.cryo matches 1.. run particle snowflake ~ ~1 ~ 0.3 0.5 0.3 0 1 force

#> 蒸发
#  火+水 1.5 | 水+火 2.0

#> 融化
#  冰+火 1.5 | 火+冰 2.0

#> 冻结
#  冰+水
execute if entity @s[tag=!el.frz] if score @s element.cryo matches 1.. if score @s element.hydro matches 1.. run function ys:entity/element/parse/freeze
execute if entity @s[tag=el.frz] run function ys:entity/element/freeze

#> 超载
#  雷+火

#> 超导
#  雷+冰

#> 感电
#  雷+水

#> 燃烧
#  草+火

#> 绽放  |  超绽放  |  烈绽放
#  草+水 | 草+水+雷 | 草+水+火

#> 激化  |  蔓激化  |  超激化
#  草+雷 | 草+雷+草 | 草+雷+雷