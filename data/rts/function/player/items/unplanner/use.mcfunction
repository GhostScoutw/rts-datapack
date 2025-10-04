execute unless entity @n[tag=these.blueprints,tag=highlighted] run return run tellraw @s {text:"You must be looking at a blueprint to unplan!",color:red}


playsound entity.puffer_fish.blow_out master @s ~ ~ ~ 0.5 0.5
execute as @n[tag=these.blueprints,tag=highlighted] at @s run function rts:structure/blueprint/kill