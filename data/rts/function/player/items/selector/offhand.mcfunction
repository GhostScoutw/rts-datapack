

execute as @n[tag=these.troops,distance=..10] if entity @s[tag=selected] run tag @p[tag=this.player] add is_selected

execute if entity @s[tag=is_selected] run playsound block.amethyst_cluster.break master @s ~ ~ ~ 1 0.5
execute if entity @s[tag=!is_selected] run playsound block.amethyst_cluster.break master @s ~ ~ ~ 1 1

execute as @e[tag=these.troops] if entity @p[tag=this.player,tag=is_selected] run tag @s remove selected
execute as @e[tag=these.troops,distance=..10] if entity @p[tag=this.player,tag=!is_selected] run tag @s add selected

tag @s remove is_selected