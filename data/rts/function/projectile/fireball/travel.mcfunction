$tp @s ^ ^ ^0.25 facing $(x) $(y) $(z)
particle smoke

particle small_flame ~ ~ ~ 0.1 0.1 0.1 0.01 10

$execute positioned $(x) $(y) $(z) if entity @s[distance=..1] unless entity @n[tag=troop,tag=!these_troops,distance=..1] run kill @s