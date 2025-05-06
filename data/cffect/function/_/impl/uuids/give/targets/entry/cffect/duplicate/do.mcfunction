#> cffect:_/impl/uuids/give/targets/entry/duplicate/do
#--------------------
# .../existing AS [target]
#--------------------

data modify storage cffect:_ s.give[-1].trigger.end set value true

# get {..old_task}
function cffect:_/impl/uuids/give/targets/entry/cffect/duplicate/get_task with storage cffect:_ s.give[-1].old_cffect

# cancel old task:
data modify storage delay:in cancel.task_id set from storage cffect:_ s.give[-1].old_cffect.end_task_id
function delay:cancel

# calc remaining duration:
execute store result score *x _cffect run time query gametime
execute store result score *y _cffect run data get storage cffect:_ s.give[-1].old_task.time
scoreboard players operation *y _cffect -= *x _cffect

# duplicate handler:
# add API stack instance:
data modify storage cffect:api instances prepend value {trigger:{start:true, end:true}}
execute store result storage cffect:api instances[0].old.duration int 1 run scoreboard players get *y _cffect
data modify storage cffect:api instances[0].old.data set from storage cffect:_ s.give[-1].old_cffect.data
data modify storage cffect:api instances[0].new.duration set from storage cffect:_ s.give[-1].in.duration
data modify storage cffect:api instances[0].new.data set from storage cffect:_ s.give[-1].in.data
data modify storage cffect:api instances[0].id set from storage cffect:_ s.give[-1].in.id
function cffect:_/impl/uuids/give/targets/entry/cffect/duplicate/execute_handler with storage cffect:_ s.give[-1].definition

# set {..trigger}:
data modify storage cffect:_ s.give[-1].trigger.start.enable set from storage cffect:api instances[0].trigger.start
data modify storage cffect:_ s.give[-1].trigger.start.data set from storage cffect:api instances[0].new.data

data modify storage cffect:_ s.give[-1].trigger.end.enable set from storage cffect:api instances[0].trigger.end
data modify storage cffect:_ s.give[-1].trigger.end.data set from storage cffect:api instances[0].old.data

# trigger end:
execute if data storage cffect:_ s.give[-1].trigger.end{enable:true} run function cffect:_/impl/uuids/give/targets/entry/cffect/duplicate/trigger_end

# new task:
data modify storage cffect:_ s.give[-1].create_delay.in.ticks set from storage cffect:api instances[0].new.duration
function cffect:_/impl/uuids/give/targets/create_delay

# merge effect:
data modify storage cffect:_ s.give[-1].merge_cffect.end_task_id set from storage cffect:_ s.give[-1].create_delay.out.task_id
data modify storage cffect:_ s.give[-1].merge_cffect.data set from storage cffect:api instances[0].new.data
data modify storage cffect:_ s.give[-1].merge_cffect.tick.command set from storage cffect:_ s.give[-1].definition.tick
data modify storage cffect:_ s.give[-1].id set from storage cffect:_ s.give[-1].in.id
function cffect:_/impl/uuids/give/targets/entry/cffect/duplicate/merge_cffect with storage cffect:_ s.give[-1]

# remove API stack instance:
data remove storage cffect:api instances[0]