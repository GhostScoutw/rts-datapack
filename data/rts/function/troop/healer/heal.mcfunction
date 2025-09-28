scoreboard players operation @s generic.attack_cooldown = @s generic.attack_cooldown.max
effect give @n[tag=this.target] instant_health 1 0
effect give @n[tag=this.target] regeneration 4 1

execute at @s run particle end_rod ~ ~2 ~ 0.4 0.8 0.4 0 20
execute at @n[tag=this.target] anchored eyes run particle totem_of_undying ~ ~1 ~ 0.4 0.8 0.4 0 40

playsound block.amethyst_block.resonate master @a ~ ~ ~ 2 0.5