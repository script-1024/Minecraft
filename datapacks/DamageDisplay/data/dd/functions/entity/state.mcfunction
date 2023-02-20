execute store success score @s entity.state.wet if block ~ ~ ~ water
execute store result score @s entity.state.fire run data get entity @s Fire 1
execute store result score @s entity.state.passenger on passengers

execute if entity @s[tag=!i] if score @s entity.state.passenger matches 1.. on passengers unless entity @s[tag=i] on vehicle run function dd:entity/text_display/icon/ride
execute if entity @s[tag=!i] unless score @s entity.state.passenger matches 1.. run function dd:entity/text_display/icon/ride

execute if score @s entity.state.wet matches 1.. unless score @s entity.timer.wet matches 1.. run function dd:entity/text_display/wet/show
execute if score @s entity.state.fire matches 1.. unless score @s entity.timer.fire matches 1.. run function dd:entity/text_display/fire/show