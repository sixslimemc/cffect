#> cffect:_/impl/uuids/give/targets/entry/cffect/duplicate/trigger_end
#--------------------
# ./do AS [target]
#--------------------

data modify storage cffect:_ util.execute_trigger.in.data set from storage cffect:_ s.give[-1].trigger.end.data
data modify storage cffect:_ util.execute_trigger.in.uuid set from storage cffect:_ s.give[-1].this_target
data modify storage cffect:_ util.execute_trigger.in.id set from storage cffect:_ s.give[-1].in.id
data modify storage cffect:_ util.execute_trigger.in.command set from storage cffect:_ s.give[-1].old_task.data.cffect.end_command
function cffect:_/util/execute_trigger/main with storage cffect:_ util.execute_trigger.in
