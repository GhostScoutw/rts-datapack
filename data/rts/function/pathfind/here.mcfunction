
kill @n[tag=spread,distance=..0.5]

tag @s add this

execute as @e[tag=path] if score @s troop.id = @n[tag=this] troop.id run kill @s

function astar:_
execute as @e[tag=astar] run function rts:pathfind/tag_path
tag @s remove this