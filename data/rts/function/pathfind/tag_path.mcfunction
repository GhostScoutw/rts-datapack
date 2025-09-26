scoreboard players operation @s generic.id = @n[tag=this] generic.id
scoreboard players operation @s troop.id = @n[tag=this] troop.id
tag @s add linked
tag @s add path
tag @s remove astar

execute store result entity @s data.color.r float 0.001 run scoreboard players get @n[tag=this] generic.color.r
execute store result entity @s data.color.g float 0.001 run scoreboard players get @n[tag=this] generic.color.g
execute store result entity @s data.color.b float 0.001 run scoreboard players get @n[tag=this] generic.color.b

execute at @s run tp @s ~ ~-0.45 ~