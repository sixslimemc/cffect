#> cffect:_/impl/uuids/remove/targets/each
#--------------------
# ../main
#--------------------

data modify storage cffect:_ end.target set from storage cffect:_ s.remove[-1].in.uuids[0].uuid
data modify storage cffect:_ end.id set from storage cffect:_ s.remove[-1].in.id
execute if function cffect:_/cffect_end/main run data modify storage cffect:_ s.remove[-1].return_arr_len append value 1

data remove storage cffect:_ s.remove[-1].in.uuids[0]
execute if data storage cffect:_ s.remove[-1].in.uuids[0] run function cffect:_/impl/uuids/remove/targets/each