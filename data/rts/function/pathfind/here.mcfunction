
kill @n[tag=spread,distance=..0.5]

tag @s add this

execute as @e[tag=path] if score @s troop.id = @n[tag=this] troop.id run kill @s

execute if block ~ ~ ~ barrier run tag @s add has_barrier
execute if entity @s[tag=has_barrier] run setblock ~ ~ ~ air

execute if block ~ ~ ~ structure_void run tag @s add has_void
execute if entity @s[tag=has_void] run setblock ~ ~ ~ air

execute if block ~ ~1 ~ barrier run tag @s add has_barrier2
execute if entity @s[tag=has_barrier2] run setblock ~ ~1 ~ air

function astar:_

execute if entity @s[tag=has_barrier] run setblock ~ ~ ~ barrier
execute if entity @s[tag=has_void] run setblock ~ ~ ~ structure_void
execute if entity @s[tag=has_barrier2] run setblock ~ ~1 ~ barrier
execute as @e[tag=astar] run function rts:pathfind/tag_path

execute if entity @s[tag=has_barrier] as @e[tag=path,distance=..1] if score @s troop.id = @n[tag=this] troop.id run kill @s
execute if entity @s[tag=has_void] as @e[tag=path,distance=..1] if score @s troop.id = @n[tag=this] troop.id run kill @s

tag @s remove has_void
tag @s remove has_barrier2
tag @s remove has_barrier
tag @s remove this