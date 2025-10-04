
execute if score @s generic.attack_cooldown matches 1.. run return fail
scoreboard players operation @s generic.attack_cooldown = @s generic.attack_cooldown.max
scoreboard players reset @s troop.target

execute if entity @n[tag=this.target,tag=full] run return fail

scoreboard players operation @n[tag=this.target] troop.holding.wood += @s troop.holding.wood
scoreboard players operation @n[tag=this.target] troop.holding.stone += @s troop.holding.stone
scoreboard players operation @n[tag=this.target] troop.holding.stone_brick += @s troop.holding.stone_brick
scoreboard players operation @n[tag=this.target] troop.holding.iron += @s troop.holding.iron
scoreboard players operation @n[tag=this.target] troop.holding.food += @s troop.holding.food

scoreboard players reset @s troop.holding.wood
scoreboard players reset @s troop.holding.stone
scoreboard players reset @s troop.holding.stone_brick
scoreboard players reset @s troop.holding.iron
scoreboard players reset @s troop.holding.food

tag @s remove carrying_resources

execute as @n[tag=this.target] at @s run function rts:structure/deposit/check