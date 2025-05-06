#> cffect:_/impl/uuids/give/targets/create_delay
#--------------------
# ../new_cffect AS [target]
# ./entry/cffect/duplicate/do AS [target]
#--------------------

# IN {..create_delay.in}
# -> ticks: int 
# OUT {..create_delay.out}
# <- task_id: delay\TaskID

# returns: gametime of task execution. (return of delay:delay)

data merge storage delay:in {delay:{command:'function cffect:_/cffect_end/main with storage delay:api task.data.cffect', failsafe:'function cffect:_/end/failsafe with storage delay:api task', data:{cffect:{proper_end:true}}}}
data modify storage delay:in delay.ticks set from storage cffect:_ s.give[-1].create_delay.in.ticks
data modify storage delay:in delay.data.cffect.end_command set from storage cffect:_ s.give[-1].definition.end
data modify storage delay:in delay.data.cffect.id set from storage cffect:_ s.give[-1].in.id
data modify storage delay:in delay.data.cffect.target set from storage cffect:_ s.give[-1].this_target

execute store result score *x _cffect run function delay:delay
data modify storage cffect:_ s.give[-1].create_delay.out.task_id set from storage delay:out delay.task_id

function delay-prt:enable

return run scoreboard players get *x _cffect