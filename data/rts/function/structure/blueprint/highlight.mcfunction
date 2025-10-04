
execute if entity @s[tag=!highlighted] run item replace entity @s container.0 with orange_stained_glass
execute if entity @s[tag=highlighted] run item replace entity @s container.0 with cyan_stained_glass

tag @s remove highlighted