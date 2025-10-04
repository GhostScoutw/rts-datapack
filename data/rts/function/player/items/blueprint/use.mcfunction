
execute if entity @n[tag=this.hologram,tag=invalid_placement] run return run tellraw @s {text:"Invalid placement!",color:red}

playsound entity.villager.work_fletcher master @s ~ ~ ~ 0.5 1.5

execute as @n[tag=this.hologram] at @s run function rts:player/items/blueprint/fill_area with entity @s data.dimensions
execute as @n[tag=this.hologram] at @s run function rts:player/items/blueprint/place with entity @s data.build_cost