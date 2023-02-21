execute store success score @s entity.state.wet if block ~ ~ ~ water
execute store result score @s entity.state.fire run data get entity @s Fire 1

execute if score @s entity.state.wet matches 1.. unless score @s entity.timer.wet matches 1.. run function dd:entity/text_display/wet/show
execute if score @s entity.state.fire matches 1.. unless score @s entity.timer.fire matches 1.. run function dd:entity/text_display/fire/show