execute unless score @s player.selected_hologram matches -2147483648..2147483647 run scoreboard players set @s player.selected_hologram 0

summon item_display ~ ~ ~ {Tags:["init","hologram"]}
scoreboard players operation @n[tag=hologram,tag=init] generic.id = @s generic.id

execute if score @s player.selected_hologram matches 0 run data merge entity @n[tag=hologram,tag=init] \
    {item:{id:"blue_stained_glass"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],\
    translation:[0,0,0],scale:[1,1,1]},data:{build_cost:{wood:0,iron:0,stone:20,food:0,name:"stone Block (1x1)",tag_id:"stone_brick1x1"}}}


execute if score @s player.selected_hologram matches 1 run data merge entity @n[tag=hologram,tag=init] \
    {item:{id:"blue_stained_glass"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],\
    translation:[0,0.501,0],scale:[1,2,1]},data:{build_cost:{wood:0,iron:0,stone:40,food:0,name:"Stone Block (1x2)",tag_id:"stone_brick1x2"}}}


execute if score @s player.selected_hologram matches 2 run data merge entity @n[tag=hologram,tag=init] \
    {item:{id:"blue_stained_glass"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],\
    translation:[0,0,0.501],scale:[1,1,2]},data:{build_cost:{wood:0,iron:0,stone:40,food:0,name:"Stone Block (2x1)",tag_id:"stone_brick2x1"}}}


execute if score @s player.selected_hologram matches 3 run data merge entity @n[tag=hologram,tag=init] \
    {item:{id:"blue_stained_glass"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],\
    translation:[0.501,-0.25,0.501],scale:[2,0.5,2]},data:{build_cost:{wood:20,iron:0,stone:0,food:0,name:"Deposit",tag_id:"deposit"}}}

execute as @n[tag=hologram,tag=init] run data modify entity @s data.dimensions.x set from entity @s transformation.scale[0]
execute as @n[tag=hologram,tag=init] run data modify entity @s data.dimensions.y set from entity @s transformation.scale[1]
execute as @n[tag=hologram,tag=init] run data modify entity @s data.dimensions.z set from entity @s transformation.scale[2]
tag @n[tag=hologram,tag=init] remove init