
execute unless score @s generic.id matches -2147483648..2147483647 run function rts:player/get_id

tag @s add this.player
execute as @e[tag=troop] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add these.troops
execute as @e[tag=hologram] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add this.hologram
execute as @e[tag=blueprint] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add these.blueprints


execute if items entity @s weapon.offhand *[custom_data~{is_tool:true}] run function rts:player/items/offhand

execute if items entity @s weapon.mainhand *[custom_data~{tool:"blueprint"}] anchored eyes run function rts:player/items/blueprint/show
execute unless items entity @s weapon.mainhand *[custom_data~{tool:"blueprint"}] run kill @n[tag=this.hologram]

execute as @e[tag=these.blueprints,distance=..30,tag=highlighted] at @s run function rts:structure/blueprint/highlight
execute if items entity @s weapon.mainhand *[custom_data~{tool:"unplanner"}] anchored eyes run function rts:player/items/unplanner/show


tag @e[tag=these.blueprints] remove these.blueprints
tag @n[tag=this.hologram] remove this.hologram
tag @e[tag=these.troops] remove these.troops
tag @s remove this.player

attribute @s entity_interaction_range modifier add default_range -3 add_value
scoreboard players remove @s[scores={player.item_use.cooldown=1..}] player.item_use.cooldown 1