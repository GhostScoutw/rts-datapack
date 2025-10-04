
execute as @e[tag=structure] if score @s troop.id = @n[tag=this.troop] troop.target run tag @s add this.target

execute if entity @n[tag=this.target,tag=tree,tag=regenerating] run scoreboard players reset @s troop.target
execute if entity @n[tag=this.target,tag=tree,tag=regenerating] run tag @n[tag=this.target] remove this.target



execute if entity @n[tag=this.target,distance=..2,tag=tree] run function rts:troop/villager/take_resource
execute if entity @n[tag=this.target,distance=..2,tag=blueprint] run function rts:troop/villager/build
execute if entity @n[tag=this.target,distance=..2,tag=deposit] run function rts:troop/villager/deposit

execute unless entity @n[tag=this.target,distance=..2] at @n[tag=this.target] positioned ~ ~0.25 ~ run function rts:pathfind/here

tag @e[tag=this.target] remove this.target