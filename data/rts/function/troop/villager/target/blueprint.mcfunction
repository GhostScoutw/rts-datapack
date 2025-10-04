
title @a actionbar "trying to build"

execute if score @s troop.holding.wood matches 1.. \
    if entity @n[tag=structure,tag=blueprint,tag=these.structures,distance=..15,scores={blueprint.material_left.wood=1..}] \
    run return run scoreboard players operation @s \
    troop.target = @n[tag=structure,tag=blueprint,tag=these.structures,distance=..15,scores={blueprint.material_left.wood=1..}] troop.id

execute if score @s troop.holding.stone_brick matches 1.. \
    if entity @n[tag=structure,tag=blueprint,tag=these.structures,distance=..15,scores={blueprint.material_left.stone=1..}] \
    run return run scoreboard players operation @s \
    troop.target = @n[tag=structure,tag=blueprint,tag=these.structures,distance=..15,scores={blueprint.material_left.stone=1..}] troop.id

execute if score @s troop.holding.iron matches 1.. \
    if entity @n[tag=structure,tag=blueprint,tag=these.structures,distance=..15,scores={blueprint.material_left.iron=1..}] \
    run return run scoreboard players operation @s \
    troop.target = @n[tag=structure,tag=blueprint,tag=these.structures,distance=..15,scores={blueprint.material_left.iron=1..}] troop.id

execute if score @s troop.holding.food matches 1.. \
    if entity @n[tag=structure,tag=blueprint,tag=these.structures,distance=..15,scores={blueprint.material_left.food=1..}] \
    run return run scoreboard players operation @s \
    troop.target = @n[tag=structure,tag=blueprint,tag=these.structures,distance=..15,scores={blueprint.material_left.food=1..}] troop.id

