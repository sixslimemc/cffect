#> cffect:_/tick/main
#--------------------
# @tick
#--------------------
schedule function cffect:_/tick/main 1t

data modify storage cffect:_ var.tick.actives set from storage cffect:data entities.active
execute if data storage cffect:_ var.tick.actives[0] summon snowball run function cffect:_/tick/actives/each

data remove storage cffect:_ var.tick