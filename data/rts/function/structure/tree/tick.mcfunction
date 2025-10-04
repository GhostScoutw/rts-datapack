
scoreboard players remove @s[scores={generic.attack_cooldown=1..}] generic.attack_cooldown 1


execute if score @s generic.attack_cooldown matches ..0 at @s run function rts:structure/tree/build