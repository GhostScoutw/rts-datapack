execute positioned ^ ^ ^0.25 \
        if block ~ ~ ~ air \
        unless entity @p[tag=this.player,distance=30..] \
    run return run function rts:player/items/blueprint/show

execute unless entity @n[tag=this.blueprint] run return run function rts:player/items/blueprint/summon

execute align xyz run tp @n[tag=this.blueprint] ~0.5 ~ ~0.5