
execute if entity @n[tag=this.astar] run return run function rts:troop/healer/move

execute as @e[tag=these.troops,tag=troop,tag=!this.troop] if score @s generic.hp < @s generic.hp.max run tag @s add healable

execute unless score @s troop.target matches -2147483648..2147483647 at @s if entity @n[tag=healable,distance=..6] run scoreboard players operation @s troop.target = @n[tag=healable,distance=..6] troop.id

execute if score @s troop.target matches -2147483648..2147483647 at @s run function rts:troop/healer/target

tag @e[tag=these.troops,tag=healable] remove healable