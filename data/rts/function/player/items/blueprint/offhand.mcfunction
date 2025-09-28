
kill @n[tag=this.blueprint]

scoreboard players add @s player.selected_blueprint 1

execute if score @s player.selected_blueprint matches 4.. run scoreboard players set @s player.selected_blueprint 0