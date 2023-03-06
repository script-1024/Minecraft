execute unless data entity @s Passengers[{Tags:[icon]}] run function ys:entity/element/icon/non-player/ride
execute if score @s element.cryo matches 1.. on passengers run data modify entity @s text set value '{"translate":"element.cryo"}'
execute if score @s element.hydro matches 1.. on passengers run data modify entity @s text set value '{"translate":"element.hydro"}'
execute if score @s element.pyro matches 1.. on passengers run data modify entity @s text set value '{"translate":"element.pyro"}'