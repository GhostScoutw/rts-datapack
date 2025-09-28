$tp @s ^ ^ ^0.25 facing $(x) $(y) $(z)
particle crit
$execute positioned $(x) $(y) $(z) if entity @s[distance=..1] unless entity @n[tag=troop,tag=!these_troops,distance=..1] run kill @s