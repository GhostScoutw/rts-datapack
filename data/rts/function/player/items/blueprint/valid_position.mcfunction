#particle flame
#$execute positioned ^-1 ^-1 ^-1 run particle soul_fire_flame ^$(x) ^$(y) ^$(z)
tag @s remove invalid_placement
$execute positioned ^-1 ^-1 ^-1 unless blocks ^1 ^1 ^1 ^$(x) ^$(y) ^$(z) 0 128 0 all run tag @s add invalid_placement

execute if entity @s[tag=invalid_placement] unless items entity @s container.0 \
    red_stained_glass run item replace entity @s \
    container.0 with red_stained_glass

execute if entity @s[tag=!invalid_placement] unless items entity @s container.0 blue_stained_glass run item replace entity @s container.0 with blue_stained_glass