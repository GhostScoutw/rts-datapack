tag @s remove has_wood
tag @s remove has_stone
tag @s remove has_stone_brick
tag @s remove has_iron
tag @s remove has_food
tag @s remove full
tag @s remove empty

execute on passengers run kill @s

execute if score @s troop.holding.wood matches 1.. run tag @s add has_wood
execute if score @s troop.holding.stone matches 1.. run tag @s add has_stone
execute if score @s troop.holding.stone_brick matches 1.. run tag @s add has_stone_brick
execute if score @s troop.holding.iron matches 1.. run tag @s add has_iron
execute if score @s troop.holding.food matches 1.. run tag @s add has_food


execute if score @s troop.holding.wood matches 80.. run tag @s add full
execute if score @s troop.holding.stone matches 100.. run scoreboard players set @s troop.holding.stone_brick 4
execute if score @s troop.holding.stone matches 100.. run scoreboard players set @s troop.holding.stone 0

execute if score @s troop.holding.stone_brick matches 4.. run tag @s add full
execute if score @s troop.holding.iron matches 100.. run tag @s add full
execute if score @s troop.holding.food matches 100.. run tag @s add full

execute if entity @s[tag=!has_wood,tag=!has_stone,tag=!has_stone_brick,tag=!has_iron,tag=!has_food,tag=!full] run return run tag @s add empty


execute if score @s troop.holding.wood matches 1.. run summon block_display ~ ~ ~ {block_state:{Name:"oak_log",Properties:{axis:"z"}},Tags:["deposit_display","init","layer1"]}
execute if score @s troop.holding.wood matches 21.. run summon block_display ~ ~ ~ {block_state:{Name:"birch_log",Properties:{axis:"z"}},Tags:["deposit_display","init","layer2"]}
execute if score @s troop.holding.wood matches 41.. run summon block_display ~ ~ ~ {block_state:{Name:"spruce_log",Properties:{axis:"x"}},Tags:["deposit_display","init","layer3"]}
execute if score @s troop.holding.wood matches 61.. run summon block_display ~ ~ ~ {block_state:{Name:"jungle_log",Properties:{axis:"x"}},Tags:["deposit_display","init","layer4"]}





tag @s add this.mount
execute as @e[tag=deposit_display,tag=init] at @s run function rts:structure/deposit/set_displays
tag @s remove this.mount