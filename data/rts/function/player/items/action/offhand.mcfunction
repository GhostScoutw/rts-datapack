
execute positioned ^ ^ ^0.25 \
        if block ~ ~ ~ air \
        unless entity @p[tag=this.player,distance=30..] \
    run return run function rts:player/items/action/offhand

execute store result score count temp if entity @e[tag=these.troops,tag=selected]

execute if score count temp matches 0 run return run tellraw @s {"text":"You must have a troop selected to command an action!",color:red}

execute unless entity @e[tag=selected,tag=transporter,tag=these.troops] run return run tellraw @s {"text":"This troop doesnt a destination action!",color:red}

#transporter troop targets closest deposit
execute as @e[tag=selected,tag=transporter,tag=these.troops] if entity @n[tag=deposit,tag=these.buildings,distance=..5] run scoreboard players operation @e[tag=selected,tag=transporter,tag=these.troops] troop.target = @n[tag=deposit,tag=these.buildings,distance=..5] troop.id


execute as @e[tag=selected,tag=transporter,tag=these.troops] run tag @s remove selected