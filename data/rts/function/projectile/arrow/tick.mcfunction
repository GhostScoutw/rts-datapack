execute at @s run function rts:projectile/arrow/travel with entity @s data.target_block
execute at @s run function rts:projectile/arrow/travel with entity @s data.target_block
execute at @s run function rts:projectile/arrow/travel with entity @s data.target_block

execute at @s positioned ~ ~-1 ~ if entity @n[tag=troop,tag=!these.troops,distance=..1] run function rts:projectile/arrow/hit