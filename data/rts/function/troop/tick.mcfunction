tag @s add this.troop
execute as @e[tag=path] if score @s troop.id = @n[tag=this.troop] troop.id run tag @s add this.astar
execute as @a if score @s generic.id = @n[tag=this.troop] generic.id run tag @s add this.player


execute if entity @s[tag=pig] run function rts:troop/pig/tick
execute if entity @s[tag=archer] run function rts:troop/archer/tick
execute if entity @s[tag=builder] run function rts:troop/builder/tick
execute if entity @s[tag=farmer] run function rts:troop/farmer/tick
execute if entity @s[tag=healer] run function rts:troop/healer/tick
execute if entity @s[tag=mage] run function rts:troop/mage/tick
execute if entity @s[tag=miner] run function rts:troop/miner/tick
execute if entity @s[tag=warrior] run function rts:troop/warrior/tick


execute if entity @s[tag=selected] run function rts:troop/show_selected with entity @s data.color

function rts:troop/display with entity @s

tag @p[tag=this.player] remove this.player
tag @e[tag=this.astar] remove this.astar
tag @s remove this.troop


scoreboard players remove @s[scores={generic.attack_cooldown=1..}] generic.attack_cooldown 1
