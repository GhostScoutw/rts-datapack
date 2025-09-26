
execute unless score @s generic.id matches -2147483648..2147483647 run function rts:player/get_id

tag @s add this.player
execute as @e[tag=troop] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add these.troops



tag @e[tag=these.troops] remove these.troops
tag @s remove this.player

scoreboard players remove @s[scores={player.item_use.cooldown=1..}] player.item_use.cooldown 1