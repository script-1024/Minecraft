scoreboard players set #math ct.time 0

scoreboard players operation @s ct.temp.x = @s ct.self.x
scoreboard players operation @s ct.temp.x -= @s ct.target.x
execute if score @s ct.temp.x matches ..-1 run scoreboard players operation @s ct.temp.x *= -1 ct.const

scoreboard players operation @s ct.temp.y = @s ct.self.y
scoreboard players operation @s ct.temp.y -= @s ct.target.y
execute if score @s ct.temp.y matches ..-1 run scoreboard players operation @s ct.temp.y *= -1 ct.const

scoreboard players operation @s ct.temp.z = @s ct.self.z
scoreboard players operation @s ct.temp.z -= @s ct.target.z
execute if score @s ct.temp.z matches ..-1 run scoreboard players operation @s ct.temp.z *= -1 ct.const

scoreboard players operation @s ct.temp = @s ct.temp.x
execute if score use_y ct.settings matches 1 run scoreboard players operation @s ct.temp += @s ct.temp.y
scoreboard players operation @s ct.temp += @s ct.temp.z

scoreboard players operation @s ct.distance = @s ct.temp
