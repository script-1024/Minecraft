#define entity text_display

data merge entity @s {Tags:[dd],text:'{"text":"0"}',billboard:"center",value:0}
execute store result entity @s value int 1 run 

scoreboard players set @s dd.timer 25

data modify entity @s text set string 