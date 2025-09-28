scoreboard players operation @s generic.attack_cooldown = @s generic.attack_cooldown.max
execute at @n[tag=this.target] run particle sweep_attack ~ ~1 ~
execute at @n[tag=this.target] run playsound entity.player.attack.sweep master @a ~ ~ ~ 0.5 1

damage @n[tag=this.target] 4 generic by @s