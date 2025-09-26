tag @s add this.troop
execute as @e[tag=path] if score @s troop.id = @n[tag=this.troop] troop.id run tag @s add this.astar
execute as @a if score @s generic.id = @n[tag=this.troop] generic.id run tag @s add this.player


execute if entity @s[tag=pig] run function rts:troop/pig/tick


execute if entity @s[tag=selected] run function rts:troop/show_selected with entity @s data.color

tag @p[tag=this.player] remove this.player
tag @e[tag=this.astar] remove this.astar
tag @s remove this.troop