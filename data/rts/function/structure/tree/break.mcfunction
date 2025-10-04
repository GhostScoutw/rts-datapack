
data merge entity @s {transformation:{scale:[1,1,1],translation:[-0.5,0,-0.5]},block_state:{Name:"dead_bush"},interpolation_duration:0}
scoreboard players set @s troop.holding.wood 0
execute at @s run fill ~ ~ ~ ~ ~3 ~ air replace barrier
execute at @s run playsound block.wood.break master @a ~ ~ ~ 2 0.5
tag @s add regenerating
scoreboard players set @s generic.attack_cooldown 600