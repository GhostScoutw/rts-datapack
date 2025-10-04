tag @s remove hologram

tag @s add structure
$tag @s add $(tag_id)

$scoreboard players set @s blueprint.material_left.wood $(wood)
$scoreboard players set @s blueprint.material_left.stone $(stone)
$scoreboard players set @s blueprint.material_left.iron $(iron)
$scoreboard players set @s blueprint.material_left.food $(food)

item replace entity @s container.0 with cyan_stained_glass

function rts:troop/get_id

tag @s add blueprint

