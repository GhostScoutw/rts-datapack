item replace entity @s container.0 with spruce_trapdoor

tag @s remove blueprint

$execute at @s positioned ^-1 ^-1 ^-1 run fill ^1 ^1 ^1 ^$(x) ^$(y) ^$(z) barrier

data merge entity @s {brightness:{sky:15,block:0}}

scoreboard players reset @s blueprint.material_left.wood
scoreboard players reset @s blueprint.material_left.stone
scoreboard players reset @s blueprint.material_left.iron
scoreboard players reset @s blueprint.material_left.food

tag @s add empty