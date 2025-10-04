
execute if score @s player.item_use.cooldown matches 1.. run return fail
scoreboard players set @s player.item_use.cooldown 5
execute as @n[tag=this.hologram] at @s run rotate @s ~90 ~