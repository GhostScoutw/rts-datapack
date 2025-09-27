
execute if items entity @s weapon.offhand *[custom_data~{tool:"move"}] anchored eyes run function rts:player/items/move/offhand

execute if items entity @s weapon.offhand *[custom_data~{tool:"selector"}] anchored eyes run function rts:player/items/selector/offhand

item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air