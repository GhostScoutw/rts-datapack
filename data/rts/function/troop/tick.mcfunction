tag @s add this.troop
execute as @e[tag=path] if score @s troop.id = @n[tag=this.troop] troop.id run tag @s add this.astar
execute as @e[tag=troop] if score @s generic.id = @n[tag=this.troop] generic.id run tag @s add these.troops
execute as @e[tag=structure] if score @s generic.id = @n[tag=this.troop] generic.id run tag @s add these.structures
execute as @a if score @s generic.id = @n[tag=this.troop] generic.id run tag @s add this.player


execute if entity @s[tag=pig] run function rts:troop/pig/tick
execute if entity @s[tag=archer] run function rts:troop/archer/tick
execute if entity @s[tag=villager] run function rts:troop/villager/tick
execute if entity @s[tag=healer] run function rts:troop/healer/tick
execute if entity @s[tag=mage] run function rts:troop/mage/tick
execute if entity @s[tag=warrior] run function rts:troop/warrior/tick


execute if entity @s[tag=selected] run function rts:troop/show_selected with entity @s data.color

execute anchored eyes positioned ~ ~6 ~ run particle dust{color:[0,1,0],scale:1} ^ ^ ^ 0 1 0 0 1 force @p[tag=this.player]

function rts:troop/display

tag @p[tag=this.player] remove this.player
tag @e[tag=these.structures] remove these.structures
tag @e[tag=these.troops] remove these.troops
tag @e[tag=this.astar] remove this.astar
tag @s remove this.troop


scoreboard players remove @s[scores={generic.attack_cooldown=1..}] generic.attack_cooldown 1
