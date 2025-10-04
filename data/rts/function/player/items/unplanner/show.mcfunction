
execute positioned ^ ^ ^0.25 \
        if block ~ ~ ~ air \
        unless entity @p[tag=this.player,distance=30..] \
    run return run function rts:player/items/unplanner/show

execute as @n[tag=these.blueprints,distance=..1] run function rts:structure/blueprint/highlight
execute as @n[tag=these.blueprints,distance=..1] run tag @s add highlighted