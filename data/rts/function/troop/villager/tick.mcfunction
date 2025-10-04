execute if entity @n[tag=this.astar] run return run function rts:troop/villager/move

##priority levels

#building
execute unless score @s troop.target matches -2147483648..2147483647 \
    at @s if entity @s[tag=carrying_resources] \
    if entity @n[tag=structure,tag=blueprint,tag=these.structures,distance=..15] run function rts:troop/villager/target/blueprint

#storing
execute unless score @s troop.target matches -2147483648..2147483647 \
    at @s if entity @s[tag=carrying_resources] \
    if entity @n[tag=structure,tag=deposit,tag=these.structures,distance=..15] run function rts:troop/villager/target/deposit

#resource collection
execute unless score @s troop.target matches -2147483648..2147483647 \
    at @s unless entity @s[tag=carrying_resources] \
    if entity @n[tag=tree,distance=..10,tag=!regenerating] run function rts:troop/villager/target/tree





execute if score @s troop.target matches -2147483648..2147483647 at @s run function rts:troop/villager/target