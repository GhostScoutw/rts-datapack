tag @s add this
execute on vehicle on passengers as @s[tag=this] run tag @s add troop_exists
tag @s remove this

execute if entity @s[tag=troop_exists] run return run tag @s remove troop_exists

kill @s