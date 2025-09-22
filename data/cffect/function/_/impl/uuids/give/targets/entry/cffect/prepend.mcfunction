#> cffect:_/impl/uuids/give/targets/entry/cffect/prepend
#--------------------
# ../existing AS [target]
#--------------------

function cffect:_/impl/uuids/give/new_cffect
$data modify storage cffect:data entities.active[{uuid:$(this_target)}].cffects prepend from storage cffect:_ s.give[-1].new_cffect.out.instance