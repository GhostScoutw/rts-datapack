advancement revoke @s only rts:using_item


execute if score @s player.item_use.cooldown matches 1.. if items entity @s weapon.mainhand *[custom_data~{hold:false}] run scoreboard players add @s player.item_use.cooldown 1
execute if score @s player.item_use.cooldown matches 1.. run return fail

scoreboard players set @s player.item_use.cooldown 3


tag @s add this.player
execute as @e[tag=troop] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add these.troops
execute as @e[tag=hologram] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add this.hologram
execute as @e[tag=blueprint] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add these.blueprints


execute if items entity @s weapon.mainhand *[custom_data~{tool:"move"}] anchored eyes run function rts:player/items/move/use

execute if items entity @s weapon.mainhand *[custom_data~{tool:"selector"}] anchored eyes run function rts:player/items/selector/use

execute if items entity @s weapon.mainhand *[custom_data~{tool:"action"}] anchored eyes run function rts:player/items/action/use

execute if items entity @s weapon.mainhand *[custom_data~{tool:"blueprint"}] anchored eyes run function rts:player/items/blueprint/use

execute if items entity @s weapon.mainhand *[custom_data~{tool:"unplanner"}] anchored eyes run function rts:player/items/unplanner/use

tag @e[tag=these.blueprints] remove these.blueprints
tag @n[tag=this.hologram] remove this.hologram
tag @e[tag=these.troops] remove these.troops
tag @s remove this.player

