#> cffect:_/impl/uuids/give/targets/entry/existing
#--------------------
# ../on_target AS [target]
#--------------------

$execute store result score *give.is_duplicate _cffect run data modify storage cffect:_ g.give[-1].existing_effect set from storage cffect:_ s.give[-1].current_cffects[{id:'$(id)'}]

execute if score *give.is_duplicate _cffect matches 0 run function cffect:_/impl/uuids/give/targets/entry/cffect/prepend with storage cffect:_ s.give[-1]
execute if score *give.is_duplicate _cffect matches 1 run function cffect:_/impl/uuids/give/targets/entry/cffect/duplicate/do
