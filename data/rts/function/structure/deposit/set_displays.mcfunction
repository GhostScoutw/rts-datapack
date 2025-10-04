
execute if entity @s[tag=layer1] run data merge entity @s {transformation:{translation:[-0.4,-0.4,-0.5],scale:[0.8,0.8,2]}}

execute if entity @s[tag=layer2] run data merge entity @s {transformation:{translation:[0.6,-0.4,-0.5],scale:[0.8,0.8,2]}}

execute if entity @s[tag=layer3] run data merge entity @s {transformation:{translation:[-0.5,0.4,0.6],scale:[2,0.8,0.8]}}

execute if entity @s[tag=layer4] run data merge entity @s {transformation:{translation:[-0.5,0.4,-0.4],scale:[2,0.8,0.8]}}

execute rotated as @n[tag=this.mount] run rotate @s ~ ~

tag @s remove init
ride @s mount @n[tag=this.mount]