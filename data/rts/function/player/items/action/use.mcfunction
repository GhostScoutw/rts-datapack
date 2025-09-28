
execute positioned ^ ^ ^0.25 \
        if block ~ ~ ~ air \
        unless entity @p[tag=this.player,distance=30..] \
    run return run function rts:player/items/action/use

execute store result score count temp if entity @e[tag=these.troops,tag=selected]

execute if score count temp matches 0 run return run tellraw @s {"text":"You must have a troop selected to command an action!",color:red}

#healers target closest troop
execute as @e[tag=selected,tag=healer,tag=these.troops] if entity @n[tag=these.troops,distance=..5] run scoreboard players operation @e[tag=selected,tag=healer,tag=these.troops] troop.target = @n[tag=these.troops,distance=..5] troop.id
#offensive troop targets closest troop not on same team
execute as @e[tag=selected,tag=offensive,tag=these.troops] if entity @n[tag=troop,tag=!these.troops,distance=..5] run scoreboard players operation @e[tag=selected,tag=offensive,tag=these.troops] troop.target = @n[tag=troop,tag=!these.troops,distance=..5] troop.id

#builder targets closest blueprint
execute as @e[tag=selected,tag=builder,tag=these.troops] if entity @n[tag=blueprint,tag=these.buildings,distance=..5] run scoreboard players operation @e[tag=selected,tag=builder,tag=these.troops] troop.target = @n[tag=blueprint,tag=these.buildings,distance=..5] troop.id

#farmer targets closest farm
execute as @e[tag=selected,tag=farmer,tag=these.troops] if entity @n[tag=farm,tag=these.buildings,distance=..5] run scoreboard players operation @e[tag=selected,tag=farmer,tag=these.troops] troop.target = @n[tag=farm,tag=these.buildings,distance=..5] troop.id
#miner targets closest mine
execute as @e[tag=selected,tag=miner,tag=these.troops] if entity @n[tag=mine,tag=these.buildings,distance=..5] run scoreboard players operation @e[tag=selected,tag=miner,tag=these.troops] troop.target = @n[tag=mine,tag=these.buildings,distance=..5] troop.id


execute as @e[tag=selected,tag=these.troops] run tag @s remove selected