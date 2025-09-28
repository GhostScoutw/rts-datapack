kill @e[tag=this.astar]

execute as @e[tag=troop,tag=!these.troops] if score @s troop.id = @n[tag=this.troop] troop.target run tag @s add this.target

execute unless entity @n[tag=this.target,distance=..12] run scoreboard players reset @s troop.target

execute unless entity @n[tag=this.target,distance=..12] at @s anchored eyes run particle angry_villager ~ ~2 ~

execute if score @s troop.target matches -2147483648..2147483647 if score @s generic.attack_cooldown matches ..0 run function rts:troop/archer/attack

rotate @s facing entity @n[tag=this.target]

tag @n[tag=this.target] remove this.target
