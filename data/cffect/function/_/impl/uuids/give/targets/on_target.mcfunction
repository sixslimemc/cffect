#> cffect:_/impl/uuids/give/targets/on_target
#--------------------
# ./each AS [target]
#--------------------

scoreboard players add *give.return_count _cffect 1

$execute store success score *x _cffect run data modify storage cffect:_ s.give[-1].current_cffects set from storage cffect:data entities.active[{uuid:$(uuid)}].cffects

# sets {..trigger}
execute if score *x _cffect matches 1 run function cffect:_/impl/uuids/give/targets/entry/existing
execute if score *x _cffect matches 0 run function cffect:_/impl/uuids/give/targets/entry/new

