
execute as @n[tag=these.troops,tag=selected,tag=!spreaded] run function rts:pathfind/here

tag @n[tag=these.troops,tag=!spreaded,tag=selected] add spreaded
