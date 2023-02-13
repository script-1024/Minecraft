scoreboard players operation @s delta.x = @s target.x
scoreboard players operation @s delta.y = @s target.y
scoreboard players operation @s delta.z = @s target.z

scoreboard players operation @s delta.x -= @s self.x
scoreboard players operation @s delta.y -= @s self.y
scoreboard players operation @s delta.z -= @s self.z

execute if score @s delta.x matches ..-1 run scoreboard players operation @s delta.x *= #-1 const
execute if score @s delta.y matches ..-1 run scoreboard players operation @s delta.y *= #-1 const
execute if score @s delta.z matches ..-1 run scoreboard players operation @s delta.z *= #-1 const

scoreboard players operation @s target.distance = @s delta.x
scoreboard players operation @s target.distance += @s delta.y
scoreboard players operation @s target.distance += @s delta.z