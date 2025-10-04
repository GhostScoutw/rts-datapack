

execute if data entity @s {data:{resource_left:0}} run return fail


execute store result score @s troop.holding.wood run data get entity @s data.resource_left

execute store result entity @s data.resource_left int 1 run scoreboard players remove @s troop.holding.wood 20
scoreboard players add @n[tag=this.troop] troop.holding.wood 20

function rts:structure/tree/check