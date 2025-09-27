execute at @s run rotate @s facing entity @n[tag=this.astar]
#execute at @s run rotate @s ~ 0

tp @s ^ ^ ^0.15

execute at @s if entity @n[tag=this.astar,distance=..0.16] run kill @n[tag=this.astar]