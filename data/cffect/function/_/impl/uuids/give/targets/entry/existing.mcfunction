#> cffect:_/impl/uuids/give/targets/entry/existing
#--------------------
# ../on_target AS [target]
#--------------------

$execute store success storage cffect:_ s.give[-1].f.is_duplicate byte 1 run data modify storage cffect:_ s.give[-1].old_cffect set from storage cffect:_ s.give[-1].current_cffects[{id:'$(id)'}]

execute if data storage cffect:_ s.give[-1].f{is_duplicate:0b} run function cffect:_/impl/uuids/give/targets/entry/cffect/prepend with storage cffect:_ s.give[-1]
execute if data storage cffect:_ s.give[-1].f{is_duplicate:1b} run function cffect:_/impl/uuids/give/targets/entry/cffect/duplicate/do
