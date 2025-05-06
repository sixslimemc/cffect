#> cffect:_/tick/actives/each
#--------------------
# ../main AS [proxy snowball]
#--------------------
kill @s
data modify entity @s Owner set from storage cffect:_ var.tick.actives[-1].uuid

data modify storage cffect:_ var.tick.cffects append from storage cffect:_ var.tick.actives[-1].cffects[{tick:{enabled:true}}]

execute if data storage cffect:_ var.tick.cffects[0] on origin at @s run function cffect:_/tick/actives/cffects/each

data remove storage cffect:_ var.tick.actives[-1]
execute if data storage cffect:_ var.tick.actives[0] summon snowball run function cffect:_/tick/actives/each