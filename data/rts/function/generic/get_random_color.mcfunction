execute store result score @s generic.color.r run random value 0..1000
execute store result score @s generic.color.g run random value 0..1000
execute store result score @s generic.color.b run random value 0..1000

execute unless entity @s[type=player] store result entity @s data.color.r float 0.001 run scoreboard players get @s generic.color.r
execute unless entity @s[type=player] store result entity @s data.color.g float 0.001 run scoreboard players get @s generic.color.g
execute unless entity @s[type=player] store result entity @s data.color.b float 0.001 run scoreboard players get @s generic.color.b