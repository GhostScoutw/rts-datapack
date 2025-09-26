
summon pig ~ ~ ~ {Tags:["troop","pig","init"],NoAI:true}


execute as @n[tag=troop,tag=init] run function rts:generic/get_random_color
scoreboard players operation @n[tag=troop,tag=init] generic.id = @s generic.id
execute as @n[tag=troop,tag=init] run function rts:troop/get_id
tag @n[tag=troop,tag=init] remove init