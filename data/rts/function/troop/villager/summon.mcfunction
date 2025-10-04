summon villager ~ ~ ~ {Tags:["troop","villager","init"],NoAI:true,\
    VillagerData:{profession:"none",type:"plains"},\
    CustomName:"Villager",\
}


scoreboard players operation @n[tag=troop,tag=init] generic.id = @s generic.id
execute as @n[tag=troop,tag=init] run function rts:troop/get_id

execute as @n[tag=troop,tag=init] run function rts:generic/get_random_color


summon text_display ~ ~ ~ {Tags:["init","troop_display"],billboard:"vertical"}
execute as @n[tag=troop,tag=init] run ride @n[tag=troop_display,tag=init] mount @s
execute as @n[tag=troop,tag=init] on passengers run tag @s remove init
execute as @n[tag=troop,tag=init] on passengers run scoreboard players operation @s generic.id = @n[tag=troop,tag=init] generic.id
execute as @n[tag=troop,tag=init] on passengers run scoreboard players operation @s troop.id = @n[tag=troop,tag=init] troop.id
execute as @n[tag=troop,tag=init] on passengers run data merge entity @s {transformation:{translation:[0,1f,0]}}

execute as @n[tag=troop,tag=init] \
    store result score @s generic.attack_cooldown run scoreboard players set @s generic.attack_cooldown.max 20
execute as @n[tag=troop,tag=init] run attribute @s max_health base set 10
execute as @n[tag=troop,tag=init] \
    store result score @s generic.hp store result score @s generic.hp.max store result entity @s Health float 1 run attribute @s max_health base get


tag @n[tag=troop,tag=init] remove init