execute align xyz run summon block_display ~0.5 ~ ~0.5 {Tags:["tree","structure","init"]}

execute as @n[tag=tree,tag=init] at @s run function rts:structure/tree/build
execute as @n[tag=tree,tag=init] run function rts:troop/get_id
execute as @n[tag=tree,tag=init] run tag @s remove init