#> cffect:_/cffect_end/main
#--------------------
# @delay:command : _/impl/uuids/give/targets/main
#--------------------

# IN {end}
# % AS [target]
# -> target: uuid
# -> id: CffectID
# ~> end_command: $command
# ~> proper_end? true
# iff <proper_end> then <end_command> must be specified.


execute if data storage delay:api task.data.cffect{proper_end:true} run data modify storage cffect:_ end set from storage delay:api task.data.cffect

execute store result score *x _cffect run function cffect:_/cffect_end/execute with storage cffect:_ end

data remove storage cffect:_ var.end
data remove storage cffect:_ end

return run scoreboard players get *x _cffect