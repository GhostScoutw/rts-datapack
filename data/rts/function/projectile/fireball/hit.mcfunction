execute as @n[tag=troop,tag=!these.troops,distance=..2] run damage @s 8 arrow by @n[tag=this.troop]
execute as @e[tag=troop,tag=!these.troops,distance=..2] run damage @s 4 arrow by @n[tag=this.troop]

execute at @n[tag=troop,tag=!these.troops,distance=..2] run particle flame ~ ~1 ~ 0.6 0.6 0.6 0.04 30
execute at @n[tag=troop,tag=!these.troops,distance=..2] run particle smoke ~ ~1 ~ 0.6 0.6 0.6 0.04 100

playsound entity.dragon_fireball.explode master @a ~ ~ ~ 0.5 1

kill @s