execute as @a at @s run function rts:player/tick

execute as @e[tag=path] at @s run function rts:pathfind/tick

execute as @e[tag=troop] at @s run function rts:troop/tick

execute as @e[tag=troop_display] at @s run function rts:troop/display_tick

execute as @e[tag=projectile] at @s run function rts:projectile/tick

execute as @e[tag=tree] if score @s troop.holding.wood matches 0 at @s run function rts:structure/tree/tick