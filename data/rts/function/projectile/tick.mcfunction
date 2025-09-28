tag @s add this.projectile
execute as @a if score @s generic.id = @n[tag=this.projectile] generic.id run tag @s add this.player
execute as @e[tag=troop] if score @s generic.id = @n[tag=this.projectile] generic.id run tag @s add these.troops
execute as @e[tag=these.troops] if score @s troop.id = @n[tag=this.projectile] troop.id run tag @s add this.troop
execute as @e[tag=troop] if score @s troop.id = @n[tag=this.projectile] troop.target run tag @s add this.target

execute if entity @s[tag=arrow] run function rts:projectile/arrow/tick
execute if entity @s[tag=fireball] run function rts:projectile/fireball/tick

tag @n[tag=this.target] remove this.target
tag @n[tag=this.troop] remove this.troop
tag @e[tag=these.troops] remove these.troops
tag @s remove this.projectile
tag @p[tag=this.player] remove this.player

scoreboard players remove @s[scores={generic.lifetime=1..}] generic.lifetime 1

execute if score @s generic.lifetime matches ..0 run kill @s