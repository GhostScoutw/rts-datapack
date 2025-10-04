
kill @n[tag=this.hologram]
playsound entity.item_frame.remove_item master @s ~ ~ ~ 1 0.5
scoreboard players add @s player.selected_hologram 1

execute if score @s player.selected_hologram matches 4.. run scoreboard players set @s player.selected_hologram 0