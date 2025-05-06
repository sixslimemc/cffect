#> cffect : uuids/give : MAIN
#--------------------
# -> id: CffectID
# -> uuids: {uuid: uuid}
# -> duration: int
# ~> data? any
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 0..: success; count of entities that ceffect was applied too.
# -1: failure; no definition exists for <id>.
# -2: failure; <duration> less than 1.
#--------------------
# MAIN

# check duration:
execute store result score *x _cffect run data get storage cffect:_ s.give[-1].in.duration
execute unless score *x _cffect matches 1.. run return -2

# get {..definition}:
function cffect:_/impl/uuids/give/get_definition with storage cffect:_ s.give[-1].in
execute unless data storage cffect:_ s.give[-1].definition run return -1

data modify storage cffect:_ s.give[-1].return_arr_len set value []

# each target:
execute if data storage cffect:_ s.give[-1].in.uuids[0] summon snowball run function cffect:_/impl/uuids/give/targets/each

return run execute if data storage cffect:_ s.give[-1].return_arr_len[]