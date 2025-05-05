#> cffect:_/impl/uuids/give/targets/create_delay
#--------------------
# ./entry/new
#--------------------

# IN {..create_delay.in}
# -> ticks: int 
# OUT {..create_delay.out}
# <- task_id: delay\TaskID

data merge storage delay:in {delay:{command:'function cffect:_/end/trigger', failsafe:'function cffect:_/end/failsafe with storage delay:api task'}}
data modify storage delay:in delay.ticks set from storage cffect:_ s.give[-1].create_delay.in.ticks
data modify storage delay:in delay.data.cffect.end_command set from storage cffect:_ s.give[-1].definition.end
data modify storage delay:in delay.data.cffect.id set from storage cffect:_ s.give[-1].in.id
function delay:delay
function delay-prt:enable
data modify storage cffect:_ s.give[-1].create_delay.out.task_id set from storage delay:out delay.result