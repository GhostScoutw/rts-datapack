
execute positioned ^ ^ ^0.25 \
        unless entity @p[tag=this.player,distance=30..] \
        unless entity @n[tag=these.troops,distance=..1.5] \
    run return run function rts:player/items/selector/use

execute unless entity @n[tag=these.troops,distance=..2] run return run tellraw @s {"text":"You must be looking at a troop to select it!",color:red}

playsound block.amethyst_cluster.place master @s ~ ~ ~ 0.5 0.5

execute as @n[tag=these.troops,distance=..2] if entity @s[tag=selected] run return run tag @s remove selected
execute as @n[tag=these.troops,distance=..2] if entity @s[tag=!selected] run return run tag @s add selected