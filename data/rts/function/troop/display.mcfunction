tag @s add this

execute store result score @s generic.hp run data get entity @s Health

$execute on passengers run data merge entity @s {text:[{text:"$(CustomName) "},{score:{name:"@n[tag=this]",objective:"generic.hp"},color:red},{text:"❤",color:red}]}
tag @s remove this