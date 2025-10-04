
execute unless block ~ ~1 ~ air unless block ~ ~2 ~ air unless block ~ ~3 ~ air run return fail
tag @s remove regenerating

execute at @s run fill ~ ~ ~ ~ ~3 ~ barrier
execute at @s run playsound block.wood.step master @a ~ ~ ~ 2 0.5
data merge entity @s {transformation:{scale:[2,5,2],translation:[-1,0,-1]},block_state:{Name:"oak_sapling"},interpolation_duration:2}

data merge entity @s {data:{resource_left:40}}

execute store result score @s troop.holding.wood run data get entity @s data.resource_left

execute at @s run particle happy_villager ~ ~1.5 ~ 0.5 1.5 0.5 0 50
