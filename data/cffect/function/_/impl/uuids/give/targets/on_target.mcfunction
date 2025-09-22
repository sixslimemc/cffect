#> cffect:_/impl/uuids/give/targets/on_target
#--------------------
# ./each AS [target]
#--------------------

data modify storage cffect:_ s.give[-1].return_arr_len append value 1

$execute store success storage cffect:_ s.give[-1].f.entry_exists byte 1 run data modify storage cffect:_ s.give[-1].current_cffects set from storage cffect:data entities.active[{uuid:$(this_target)}].cffects

# default trigger start:
data modify storage cffect:_ s.give[-1].trigger.start.enable set value true
data modify storage cffect:_ s.give[-1].trigger.start.data set from storage cffect:_ s.give[-1].in.data

# sets {..trigger}
execute if data storage cffect:_ s.give[-1].f{entry_exists:1b} run function cffect:_/impl/uuids/give/targets/entry/existing with storage cffect:_ s.give[-1].in
execute if data storage cffect:_ s.give[-1].f{entry_exists:0b} run function cffect:_/impl/uuids/give/targets/entry/new

# trigger start:
execute if data storage cffect:_ s.give[-1].trigger.start{enable:true} run function cffect:_/impl/uuids/give/targets/trigger_start