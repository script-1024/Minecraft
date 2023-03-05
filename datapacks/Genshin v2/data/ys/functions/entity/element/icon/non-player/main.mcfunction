execute unless data entity @s Passengers[{Tags:[icon]}] run function ys:entity/element/icon/non-player/ride
execute if score @s element.pyro matches 1.. on passengers run data modify entity @s text set value '{"translate":"element.pyro"}'
execute unless score @s element.pyro matches 1.. on passengers run data remove entity @s text[{"translate":"element.pyro"}]