#> cffect:_/impl/uuids/give/targets/entry/duplicate/do
#--------------------
# .../existing AS [target]
#--------------------

$execute store result score *give.is_duplicate _cffect run data modify storage cffect:_ g.give[-1].existing_effect set from storage cffect:_ s.give[-1].current_cffects[{id:'$(id)'}]