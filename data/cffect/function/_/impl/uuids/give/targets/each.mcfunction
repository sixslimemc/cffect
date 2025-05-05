#> cffect:_/impl/uuids/give/targets/each
#--------------------
# ../main
#--------------------

data modify storage cffect:_ s.give[-1].this_target set from storage cffect:_ s.give[-1].in.uuids[0].uuid

$execute store success score *give.target_exists _cffect run data modify storage cffect:_ s.give[-1].current_cffects set from storage cffect:data entities.active[{uuid:$(uuid)}].cffects

data remove storage cffect:_ s.give[-1].in.uuids[0]
execute if data storage cffect:_ s.give[-1].in.uuids[0] run function cffect:_/impl/uuids/give/targets/each with storage cffect:_ s.give[-1].in.uuids[0]