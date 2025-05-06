#> cffect:_/cffect_end/execute
#--------------------
# ./main
#--------------------

# extract instance:
$data modify storage cffect:_ var.end.instance set from storage cffect:data entities.active[{uuid:$(target)}].cffects[{id:'$(id)'}]
$data remove storage cffect:data entities.active[{uuid:$(target)}].cffects[{id:'$(id)'}]

# return if no instance:
execute unless data storage cffect:_ var.end.instance run return fail

# cancel task if not proper end:
execute unless data storage cffect:_ end{proper_end:true} run function cffect:_/cffect_end/cancel_task with storage cffect:_ var.end.instance

# remove target if no cffects left:
$execute unless data storage cffect:data entities.active[{uuid:$(target)}].cffects[0] run data remove storage cffect:data entities.active[{uuid:$(target)}]

# trigger end:
data modify storage cffect:_ util.execute_trigger.in.command set from storage cffect:_ end.end_command
data modify storage cffect:_ util.execute_trigger.in.id set from storage cffect:_ end.id
data modify storage cffect:_ util.execute_trigger.in.uuid set from storage cffect:_ end.target
data modify storage cffect:_ util.execute_trigger.in.data set from storage cffect:_ var.end.instance.data
function cffect:_/util/execute_trigger/main with storage cffect:_ util.execute_trigger.in

