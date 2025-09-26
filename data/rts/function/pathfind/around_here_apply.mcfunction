particle soul_fire_flame ~ ~ ~ 0 1 0 0 200
execute as @n[tag=these.troops,tag=selected,tag=!spreaded] run function rts:pathfind/here

tag @n[tag=these.troops,tag=selected] add spreaded
