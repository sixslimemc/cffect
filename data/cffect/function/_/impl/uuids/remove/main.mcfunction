#> cffect : uuids/remove
#--------------------
# -> id: CffectID
# -> uuids: {uuid: uuid}
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 0..: amount of entities the Cffect was removed from.
#--------------------
# MAIN

data modify storage cffect:_ s.remove[-1].return_arr_len set value []
execute if data storage cffect:_ s.remove[-1].in.uuids[0] run function cffect:_/impl/uuids/remove/targets/each

return run execute if data storage cffect:_ s.remove[-1].return_arr_len[]