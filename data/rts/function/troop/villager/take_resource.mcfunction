
execute if score @s generic.attack_cooldown matches 1.. run return fail
scoreboard players operation @s generic.attack_cooldown = @s generic.attack_cooldown.max
scoreboard players reset @s troop.target


execute if entity @n[tag=this.target,tag=tree] as @n[tag=this.target,tag=tree] run function rts:structure/tree/take



tag @s add carrying_resources
