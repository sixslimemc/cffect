#> cffect:_/impl/uuids/give/targets/entry/new
#--------------------
# ../on_target AS [target]
#--------------------

# prepend (not append, so tick can iterate backward):
data modify storage cffect:data entities.active prepend value {uuid:0, cffects:[{}]}

# uuid:
data modify storage cffect:data entities.active[0].uuid set from storage cffect:_ s.give[-1].this_target

# basic effect info:
data modify storage cffect:data entities.active[0].cffects[0].id set from storage cffect:_ s.give[-1].in.id
data modify storage cffect:data entities.active[0].cffects[0].data set from storage cffect:_ s.give[-1].in.data

# add tick info:
execute if data storage cffect:_ s.give[-1].definition.tick run data modify storage cffect:data entities.active[0].cffects[0].tick.command set from storage cffect:_ s.give[-1].definition.tick
execute if data storage cffect:_ s.give[-1].definition.tick run data modify storage cffect:data entities.active[0].cffects[0].tick.enabled set value true

# create delay, store TaskID in end_task_id:
data modify storage cffect:_ s.give[-1].create_delay.in.ticks set from storage cffect:_ s.give[-1].in.duration
function cffect:_/impl/uuids/give/targets/create_delay
data modify storage cffect:data entities.active[0].cffects[0].end_task_id set from storage cffect:_ s.give[-1].create_delay.out.task_id