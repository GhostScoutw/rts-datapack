execute as @e[tag=selected,tag=these.troops] run summon marker ~ ~ ~ {Tags:["spread"]}
spreadplayers ~ ~ 1 3 false @e[tag=spread]

execute as @e[tag=spread,sort=furthest] at @s run function rts:pathfind/around_here_apply

tag @e[tag=spreaded] remove spreaded