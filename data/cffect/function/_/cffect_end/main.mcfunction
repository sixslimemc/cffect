#> cffect:_/cffect_end/main
#--------------------
# @delay:command : _/impl/uuids/give/targets/main
#--------------------

# IN {end}
# % AS [target]
# -> target: uuid
# -> end_command: $command
# -> id: CffectID
# ~> proper_end? true

execute if data storage delay:api task.data.cffect{proper_end:true} run data modify storage cffect:_ end set from storage delay:api task.data.cffect

function cffect:_/cffect_end/execute with storage cffect:_ end

data remove storage cffect:_ var.end
data remove storage cffect:_ end