
execute positioned ^ ^ ^0.25 \
        if block ~ ~ ~ air \
        unless entity @p[tag=this.player,distance=30..] \
    run return run function rts:player/items/move/use

execute store result score count temp if entity @e[tag=these.troops,tag=selected]

execute if score count temp matches 0 run return run tellraw @s {"text":"You must have a troop selected to move it!",color:red}

execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @n[tag=troop,distance=..1] run return run tellraw @s {"text":"Troops cannot occupy the same block!",color:red}
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @n[tag=path,tag=astar.finalizer,distance=..1] run return run tellraw @s {"text":"Troops cannot occupy the same block!",color:red}

#only 1 troop selected
execute align xyz positioned ~0.5 ~0.5 ~0.5 if score count temp matches 1 as @n[tag=these.troops,tag=selected] run function rts:pathfind/here

#more than 1 troop
execute align xyz positioned ~0.5 ~0.5 ~0.5 if score count temp matches 2.. run function rts:pathfind/around_here

execute as @e[tag=these.troops,tag=selected] run tag @s remove selected

