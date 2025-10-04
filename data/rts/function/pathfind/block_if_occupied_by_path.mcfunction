execute at @s positioned ~ ~-0.5 ~ if entity @n[type=marker,tag=path,distance=..1,tag=linked] run scoreboard players add @s astar.f 20
execute at @s positioned ~ ~-0.5 ~ if block ~ ~ ~ structure_void run scoreboard players add @s astar.f 40
execute at @s positioned ~ ~-0.5 ~ if entity @n[type=marker,tag=astar.finalizer,distance=..1,tag=linked] run scoreboard players add @s astar.f 100
execute at @s positioned ~ ~-0.5 ~ if entity @n[tag=troop,distance=..1] run scoreboard players add @s astar.f 100
