#> cffect:_/impl/uuids/give/targets/entry/duplicate/merge_cffect
#--------------------
# ./do AS [target]
#--------------------

$data modify storage cffect:data entities.active[{uuid:$(this_target)}].cffects[{id:'$(id)'}] merge from storage cffect:_ s.give[-1].merge_cffect

# data must be set explicitly to account for removals.
$data modify storage cffect:data entities.active[{uuid:$(this_target)}].cffects[{id:'$(id)'}] set from storage cffect:_ s.give[-1].merge_cffect.data
