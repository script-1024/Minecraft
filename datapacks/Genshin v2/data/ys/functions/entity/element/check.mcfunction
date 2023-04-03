## 无 0 | 火 1 | 水 3 | 风 7 | 雷 15 | 草 31 | 冰 63 | 岩 127
#  弱 1(0.8)单位 留9.5s | 强 2(1.6)单位 留12s | 超強 4(3.2)單位 留17s
#  弱 損失 0.08/s 強 損失 0.13/s 超強 0.19/s
execute if score @s element.pyro matches 1.. run particle small_flame ~ ~1 ~ 0.3 0.5 0.3 0 1 force
execute if score @s element.hydro matches 1.. run particle falling_water ~ ~1 ~ 0.3 0.5 0.3 0 3 force
execute if score @s element.cryo matches 1.. run particle snowflake ~ ~1 ~ 0.3 0.5 0.3 0 1 force

#> 蒸发 04 Vaporize
#  火+水 1.5 | 水+火 2.0

#> 融化 64 Melt
#  冰+火 1.5 | 火+冰 2.0

#> 冻结 66 Frozen
#  冰+水
execute if entity @s[tag=el.frz] run function ys:entity/element/state/frozen

#> 超载 16 Overloaded
#  雷+火
execute if entity @s[tag=el.ovl] run function ys:entity/element/state/overloaded

#> 超导 78 Superconduct
#  雷+冰

#> 感电 18 Electro-Charged
#  雷+水

#> 燃烧 32 Burning
#  草+火

#> 绽放 34  |  烈绽放 35  |  超绽放 49  | Bloom | Burgeon | Hyperbloom
#  草+水    |  草+水+火   |  草+水+雷

#> 激化 46  |  蔓激化 77  |  超激化 61  | Quicken | Spread | Aggravate
#  草+雷    |  草+雷+草   |  草+雷+雷

#> 擴散 Swirl
#  風

#> 結晶 Crystallize
#  岩