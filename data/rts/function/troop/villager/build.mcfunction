
execute if score @s generic.attack_cooldown matches 1.. run return fail
scoreboard players operation @s generic.attack_cooldown = @s generic.attack_cooldown.max
scoreboard players reset @s troop.target

scoreboard players operation @n[tag=this.target] blueprint.material_left.wood -= @s troop.holding.wood
scoreboard players operation @n[tag=this.target] blueprint.material_left.stone -= @s troop.holding.stone_brick
scoreboard players operation @n[tag=this.target] blueprint.material_left.iron -= @s troop.holding.iron
scoreboard players operation @n[tag=this.target] blueprint.material_left.food -= @s troop.holding.food

scoreboard players reset @s troop.holding.wood
scoreboard players reset @s troop.holding.stone
scoreboard players reset @s troop.holding.stone_brick
scoreboard players reset @s troop.holding.iron
scoreboard players reset @s troop.holding.food

tag @s remove carrying_resources

execute as @n[tag=this.target] at @s run function rts:structure/blueprint/check