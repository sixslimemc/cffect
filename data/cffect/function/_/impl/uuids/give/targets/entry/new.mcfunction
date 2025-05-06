#> cffect:_/impl/uuids/give/targets/entry/new
#--------------------
# ../on_target AS [target]
#--------------------

# prepend (not append, so tick can iterate backward):
data modify storage cffect:data entities.active prepend value {uuid:0, cffects:[{}]}

# uuid:
data modify storage cffect:data entities.active[0].uuid set from storage cffect:_ s.give[-1].this_target

# make cffect instance:
function cffect:_/impl/uuids/give/new_cffect
data modify storage cffect:data entities.active[0].cffects[0] set from storage cffect:_ s.give[-1].new_cffect.out.instance
