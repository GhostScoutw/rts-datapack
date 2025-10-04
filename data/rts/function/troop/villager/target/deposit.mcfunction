title @a actionbar "trying to deposit"

execute if score @s troop.holding.wood matches 1.. \
    if entity @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=has_wood,tag=!full] run return run scoreboard players operation @s troop.target = \
              @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=has_wood,tag=!full] troop.id

#execute if score @s troop.holding.stone matches 1.. if entity @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=has_stone,tag=!full] run return run scoreboard players operation @s troop.target = \
    @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=has_stone,tag=!full] troop.id
    
#execute if score @s troop.holding.stone_brick matches 1.. if entity @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=has_stone_brick,tag=!full] run return run scoreboard players operation @s troop.target = \
    @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=has_stone_brick,tag=!full] troop.id
    
#execute if score @s troop.holding.iron matches 1.. if entity @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=has_iron,tag=!full] run return run scoreboard players operation @s troop.target = \
    @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=has_iron,tag=!full] troop.id
    
#execute if score @s troop.holding.food matches 1.. if entity @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=has_food,tag=!full] run return run scoreboard players operation @s troop.target = \
    @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=has_food,tag=!full] troop.id

execute if entity @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=empty] run scoreboard players operation @s troop.target = \
                  @n[tag=structure,tag=deposit,tag=these.structures,distance=..15,tag=empty] troop.id

