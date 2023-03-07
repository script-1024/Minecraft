execute unless score @s counter.attach matches 0..2 run scoreboard players set @s counter.attach 0

execute if score @s counter.attach matches 0 run scoreboard players set @s element.pyro 95



scoreboard players add @s counter.attach 1