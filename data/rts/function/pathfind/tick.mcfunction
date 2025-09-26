tag @s add this.astar
execute as @a if score @s generic.id = @n[tag=this.astar] generic.id run tag @s add this.player
execute as @e[tag=troop] if score @s troop.id = @n[tag=this.astar] troop.id run tag @s add this.troop

function rts:pathfind/show_color with entity @s data.color

execute unless entity @n[tag=this.troop] run kill @s
execute unless entity @n[tag=this.player] run kill @s

tag @n[tag=this.troop] remove this.troop
tag @p[tag=this.player] remove this.player
tag @s remove this.astar