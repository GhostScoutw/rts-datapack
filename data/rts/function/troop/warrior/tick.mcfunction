
execute if entity @n[tag=this.astar] run return run function rts:troop/warrior/move

execute unless score @s troop.target matches -2147483648..2147483647 at @s if entity @n[tag=troop,tag=!these.troops,distance=..3] run scoreboard players operation @s troop.target = @n[tag=troop,tag=!these.troops,distance=..3] troop.id

execute if score @s troop.target matches -2147483648..2147483647 at @s run function rts:troop/warrior/target