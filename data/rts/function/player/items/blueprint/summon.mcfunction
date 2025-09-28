execute unless score @s player.selected_blueprint matches -2147483648..2147483647 run scoreboard players set @s player.selected_blueprint 0

summon item_display ~ ~ ~ {Tags:["init","blueprint"]}
scoreboard players operation @n[tag=blueprint,tag=init] generic.id = @s generic.id

execute if score @s player.selected_blueprint matches 0 run data merge entity @n[tag=blueprint,tag=init] {item:{id:"cherry_log"}}
execute if score @s player.selected_blueprint matches 1 run data merge entity @n[tag=blueprint,tag=init] {item:{id:"acacia_log"}}
execute if score @s player.selected_blueprint matches 2 run data merge entity @n[tag=blueprint,tag=init] {item:{id:"oak_log"}}
execute if score @s player.selected_blueprint matches 3 run data merge entity @n[tag=blueprint,tag=init] {item:{id:"jungle_log"}}

tag @n[tag=blueprint,tag=init] remove init