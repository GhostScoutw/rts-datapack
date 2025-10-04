execute positioned ^ ^ ^0.25 \
        if block ~ ~ ~ air \
        unless entity @p[tag=this.player,distance=30..] \
    run return run function rts:player/items/blueprint/show

execute unless entity @n[tag=this.hologram] run return run function rts:player/items/blueprint/summon

execute align xyz run tp @n[tag=this.hologram] ~0.5 ~0.5 ~0.5

execute if predicate rts:is_sneaking unless score @s player.item_use.cooldown matches 1.. run function rts:player/items/blueprint/shift

execute as @n[tag=this.hologram] at @s run function rts:player/items/blueprint/valid_position with entity @s data.dimensions
function rts:player/items/blueprint/actionbar with entity @n[tag=this.hologram] data.build_cost
