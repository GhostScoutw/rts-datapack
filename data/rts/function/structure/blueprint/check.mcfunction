
execute unless score @s blueprint.material_left.wood matches ..0 run return fail
execute unless score @s blueprint.material_left.stone matches ..0 run return fail
execute unless score @s blueprint.material_left.iron matches ..0 run return fail
execute unless score @s blueprint.material_left.food matches ..0 run return fail

function rts:structure/blueprint/build