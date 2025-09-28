
execute store result score @s generic.hp run data get entity @s Health

execute on passengers run data merge entity @s {text:[{selector:"@n[tag=this.troop]"},{score:{name:"@n[tag=this.troop]",objective:"generic.hp"},color:red},{text:"❤",color:red}]}

