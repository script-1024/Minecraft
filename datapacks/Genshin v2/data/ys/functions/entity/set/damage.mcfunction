#> 伤害 = 面板攻击力
## ---------------------------------角色---------------
##        x 技能倍率
##        x 增幅系数          ---> 如果为增幅反应
##        x (1+暴伤)          ---> 如果此次伤害造成暴击
##        x (1+元素伤害加成)
##        x (1+精通伤害加成)
## ---------------------------------怪物---------------
##        x (1-怪物抗性)
##        x (角色等级+100) / (角色等级+怪物等级+200)


#> 怪物抗性计算: 
##     如果 %RES < 0   --> 1-RES/2
##     如果 %RES < 75  --> 1-RES
##     如果 %RES >= 75 --> 100/(4*RES+100)


#> 获取玩家数据 () {

execute store result score @s player.crit.dmg on attacker run scoreboard players get @s player.crit.dmg
execute store result score @s player.elmentalBonus on attacker run scoreboard players get @s player.elmentalBonus
execute store result score @s player.multiplier on attacker run scoreboard players get @s player.multiplier
execute store result score @s player.isCrit on attacker run scoreboard players get @s player.isCrit
execute store result score @s player.lv on attacker run scoreboard players get @s player.lv

#> }


# 加成
scoreboard players operation @s player.crit.dmg += #1000 const
scoreboard players operation @s player.elmentalBonus += #1000 const
scoreboard players operation @s player.masteryBonus += #1000 const

# 技能倍率 ÷1000
scoreboard players operation @s entity.damage *= @s player.multiplier
scoreboard players operation @s entity.damage /= #1000 const
scoreboard players add @s entity.damage 1

# (1+暴伤) ÷1000
execute if score @s player.isCrit matches 1 run scoreboard players operation @s entity.damage *= @s player.crit.dmg
execute if score @s player.isCrit matches 1 run scoreboard players operation @s entity.damage /= #1000 const

# (1+元素伤害加成) ÷1000
scoreboard players operation @s entity.damage *= @s player.elmentalBonus
scoreboard players operation @s entity.damage /= #1000 const
scoreboard players add @s entity.damage 1

# (1+精通伤害加成) ÷1000
scoreboard players operation @s entity.damage *= @s player.masteryBonus
scoreboard players operation @s entity.damage /= #1000 const
scoreboard players add @s entity.damage 1

# (1-怪物抗性)
execute if score @s entity.res matches ..0 run scoreboard players operation @s entity.res /= #2 const
execute if score @s entity.res matches ..74 run scoreboard players set @s ys.tmp 100
execute if score @s entity.res matches ..74 run scoreboard players operation @s ys.tmp -= @s entity.res
execute if score @s entity.res matches ..74 run scoreboard players operation @s entity.damage *= @s ys.tmp
execute if score @s entity.res matches ..74 run scoreboard players operation @s entity.damage /= #100 const
execute if score @s entity.res matches 75.. run scoreboard players operation @s entity.damage *= #100 const
execute if score @s entity.res matches 75.. run scoreboard players operation @s ys.tmp = @s entity.res
execute if score @s entity.res matches 75.. run scoreboard players operation @s ys.tmp *= #4 const
execute if score @s entity.res matches 75.. run scoreboard players add @s ys.tmp 100
execute if score @s entity.res matches 75.. run scoreboard players operation @s entity.damage /= @s ys.tmp

# (角色等级+100) / (角色等级+怪物等级+200)
scoreboard players set @s ys.tmp 100
scoreboard players operation @s ys.tmp += @s player.lv
scoreboard players operation @s entity.damage *= @s ys.tmp

scoreboard players set @s ys.tmp 200
scoreboard players operation @s ys.tmp += @s player.lv
scoreboard players operation @s ys.tmp += @s entity.lv
scoreboard players operation @s entity.damage /= @s ys.tmp

# 还原
scoreboard players operation @s player.crit.dmg -= #1000 const
scoreboard players operation @s player.elmentalBonus -= #1000 const
scoreboard players operation @s player.masteryBonus -= #1000 const