scoreboard players operation @s generic.attack_cooldown = @s generic.attack_cooldown.max

execute at @n[tag=this.target] run playsound entity.ghast.shoot master @a ~ ~ ~ 0.5 1.2


summon item_display ~ ~ ~ {Tags:["init","projectile","fireball","coordinate_bound"]}

execute anchored eyes run tp @n[tag=init,tag=projectile] ^ ^ ^ facing entity @n[tag=this.target] eyes

scoreboard players operation @n[tag=init,tag=projectile] generic.id = @s generic.id
scoreboard players operation @n[tag=init,tag=projectile] troop.id = @s troop.id
scoreboard players operation @n[tag=init,tag=projectile] troop.target = @s troop.target
scoreboard players set @n[tag=init,tag=projectile] generic.lifetime 80


data modify entity @n[tag=init,tag=projectile] data.target_block.x set from entity @n[tag=this.target] Pos[0]

execute store result score height temp run data get entity @n[tag=this.target] Pos[1]
execute store result entity @n[tag=init,tag=projectile] data.target_block.y float 1 run scoreboard players add height temp 1

data modify entity @n[tag=init,tag=projectile] data.target_block.z set from entity @n[tag=this.target] Pos[2]

data merge entity @n[tag=init,tag=projectile] {teleport_duration:1}

tag @n[tag=init,tag=projectile] remove init