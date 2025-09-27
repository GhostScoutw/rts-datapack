
execute unless score @s generic.id matches -2147483648..2147483647 run function rts:player/get_id

tag @s add this.player
execute as @e[tag=troop] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add these.troops

execute if items entity @s weapon.offhand *[custom_data~{is_tool:true}] run function rts:player/items/offhand

attribute @s entity_interaction_range modifier add default_range -3 add_value

tag @e[tag=these.troops] remove these.troops
tag @s remove this.player

scoreboard players remove @s[scores={player.item_use.cooldown=1..}] player.item_use.cooldown 1