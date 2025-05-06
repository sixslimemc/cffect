#> cffect:_/tick/actives/cffects/each
#--------------------
# ../each
#--------------------


data modify storage cffect:_ util.execute_trigger.in.command set from storage cffect:_ var.tick.cffects[-1].tick.command
data modify storage cffect:_ util.execute_trigger.in.uuid set from storage cffect:_ var.tick.actives[-1].uuid
data modify storage cffect:_ util.execute_trigger.in.data set from storage cffect:_ var.tick.cffects[-1].data
data modify storage cffect:_ util.execute_trigger.in.id set from storage cffect:_ var.tick.cffects[-1].id
function cffect:_/util/execute_trigger/main with storage cffect:_ util.execute_trigger.in

data remove storage cffect:_ var.tick.cffects[-1]
execute if data storage cffect:_ var.tick.cffects[0] run function cffect:_/tick/actives/cffects/each